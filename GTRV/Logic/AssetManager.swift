//
//  AssetManager.swift
//  GTRV
//
//  Created for TestFlight asset loading from device folders.
//

import SwiftUI
import UIKit
import UniformTypeIdentifiers

public class AssetManager: ObservableObject {
	public static let shared = AssetManager()
	
	private let bookmarkKey = "assetFolderBookmark"
	private let folderNameKey = "assetFolderName"
	
	@Published public var selectedFolderURL: URL?
	@Published public var folderName: String?
	
	private let imageCache = NSCache<NSString, UIImage>()
	private var isAccessingSecurityScopedResource = false
	
	public var hasCustomFolder: Bool {
		return selectedFolderURL != nil
	}
	
	public var documentsDirectory: URL? {
		return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
	}
	
	public var statusDescription: String {
		if let name = folderName {
			return "Selected: \(name)"
		} else {
			return "Default: Files App (\"On My iPhone/GTRV\")"
		}
	}
	
	private init() {
		restoreBookmark()
	}
	
	deinit {
		stopAccessingCurrentFolder()
	}
	
	// MARK: - Security-Scoped Bookmark Management
	
	private func restoreBookmark() {
		guard let bookmarkData = UserDefaults.standard.data(forKey: bookmarkKey) else {
			return
		}
		
		var isStale = false
		do {
			let url = try URL(
				resolvingBookmarkData: bookmarkData,
				options: .withSecurityScope,
				relativeTo: nil,
				bookmarkDataIsStale: &isStale
			)
			
			if url.startAccessingSecurityScopedResource() {
				self.selectedFolderURL = url
				self.isAccessingSecurityScopedResource = true
				self.folderName = UserDefaults.standard.string(forKey: folderNameKey) ?? url.lastPathComponent
				
				if isStale {
					// Re-save refreshed bookmark data
					if let newBookmark = try? url.bookmarkData(
						options: .minimalBookmark,
						includingResourceValuesForKeys: nil,
						relativeTo: nil
					) {
						UserDefaults.standard.set(newBookmark, forKey: bookmarkKey)
					}
				}
			}
		} catch {
			print("AssetManager: Error resolving bookmark: \(error.localizedDescription)")
		}
	}
	
	public func setAssetFolder(url: URL) {
		stopAccessingCurrentFolder()
		
		guard url.startAccessingSecurityScopedResource() else {
			print("AssetManager: Could not access security-scoped resource at \(url.path)")
			return
		}
		
		self.selectedFolderURL = url
		self.isAccessingSecurityScopedResource = true
		self.folderName = url.lastPathComponent
		
		do {
			let bookmarkData = try url.bookmarkData(
				options: .minimalBookmark,
				includingResourceValuesForKeys: nil,
				relativeTo: nil
			)
			UserDefaults.standard.set(bookmarkData, forKey: bookmarkKey)
			UserDefaults.standard.set(url.lastPathComponent, forKey: folderNameKey)
		} catch {
			print("AssetManager: Error creating bookmark: \(error.localizedDescription)")
		}
		
		imageCache.removeAllObjects()
	}
	
	public func clearAssetFolder() {
		stopAccessingCurrentFolder()
		self.selectedFolderURL = nil
		self.folderName = nil
		UserDefaults.standard.removeObject(forKey: bookmarkKey)
		UserDefaults.standard.removeObject(forKey: folderNameKey)
		imageCache.removeAllObjects()
	}
	
	private func stopAccessingCurrentFolder() {
		if isAccessingSecurityScopedResource, let url = selectedFolderURL {
			url.stopAccessingSecurityScopedResource()
			isAccessingSecurityScopedResource = false
		}
	}
	
	// MARK: - Audio Path Resolution
	
	public func audioFilePath(resource: String, directory: String) -> String? {
		let cleanDirectory = directory.trimmingCharacters(in: CharacterSet(charactersIn: "/"))
		let cleanResource = resource.trimmingCharacters(in: CharacterSet(charactersIn: "/"))
		let fileName = cleanResource.hasSuffix(".mp3") ? cleanResource : "\(cleanResource).mp3"
		
		// 1. Check in custom selected folder
		if let customFolder = selectedFolderURL {
			let candidateURLs = [
				customFolder.appendingPathComponent("Audio").appendingPathComponent(cleanDirectory).appendingPathComponent(fileName),
				customFolder.appendingPathComponent(cleanDirectory).appendingPathComponent(fileName),
				customFolder.appendingPathComponent("Audio").appendingPathComponent(fileName),
				customFolder.appendingPathComponent(fileName)
			]
			for url in candidateURLs {
				if FileManager.default.fileExists(atPath: url.path) {
					return url.path
				}
			}
		}
		
		// 2. Check in app Documents folder (Files App / iTunes Sharing)
		if let docs = documentsDirectory {
			let candidateURLs = [
				docs.appendingPathComponent("Audio").appendingPathComponent(cleanDirectory).appendingPathComponent(fileName),
				docs.appendingPathComponent(cleanDirectory).appendingPathComponent(fileName),
				docs.appendingPathComponent("Audio").appendingPathComponent(fileName),
				docs.appendingPathComponent(fileName)
			]
			for url in candidateURLs {
				if FileManager.default.fileExists(atPath: url.path) {
					return url.path
				}
			}
		}
		
		// 3. Fallback to App Bundle
		if let bp = Bundle.main.path(forResource: cleanResource, ofType: "mp3", inDirectory: directory) {
			return bp
		}
		if let bpA = Bundle.main.path(forResource: cleanResource, ofType: "mp3", inDirectory: "Audio/\(cleanDirectory)") {
			return bpA
		}
		if let bpC = Bundle.main.path(forResource: cleanResource, ofType: "mp3", inDirectory: cleanDirectory) {
			return bpC
		}
		if let bpPlain = Bundle.main.path(forResource: cleanResource, ofType: "mp3") {
			return bpPlain
		}
		
		return nil
	}
	
	// MARK: - Image Resolution
	
	public func loadImage(named name: String) -> UIImage? {
		let cacheKey = name as NSString
		if let cached = imageCache.object(forKey: cacheKey) {
			return cached
		}
		
		let extensions: [String]
		let baseName: String
		if let dotIndex = name.lastIndex(of: ".") {
			baseName = String(name[..<dotIndex])
			let ext = String(name[name.index(after: dotIndex)...])
			extensions = [ext]
		} else {
			baseName = name
			extensions = ["jpg", "png", "jpeg"]
		}
		
		// 1. Check in custom selected folder
		if let customFolder = selectedFolderURL {
			for ext in extensions {
				let fileName = "\(baseName).\(ext)"
				let candidateURLs = [
					customFolder.appendingPathComponent("Assets").appendingPathComponent(fileName),
					customFolder.appendingPathComponent(fileName)
				]
				for url in candidateURLs {
					if FileManager.default.fileExists(atPath: url.path),
					   let image = UIImage(contentsOfFile: url.path) {
						imageCache.setObject(image, forKey: cacheKey)
						return image
					}
				}
			}
		}
		
		// 2. Check in app Documents folder
		if let docs = documentsDirectory {
			for ext in extensions {
				let fileName = "\(baseName).\(ext)"
				let candidateURLs = [
					docs.appendingPathComponent("Assets").appendingPathComponent(fileName),
					docs.appendingPathComponent(fileName)
				]
				for url in candidateURLs {
					if FileManager.default.fileExists(atPath: url.path),
					   let image = UIImage(contentsOfFile: url.path) {
						imageCache.setObject(image, forKey: cacheKey)
						return image
					}
				}
			}
		}
		
		// 3. Fallback to Asset Catalog (xcassets)
		if let bundleImage = UIImage(named: name) {
			imageCache.setObject(bundleImage, forKey: cacheKey)
			return bundleImage
		}
		
		// 4. Fallback to bundle resources directory
		for ext in extensions {
			if let bundlePath = Bundle.main.path(forResource: baseName, ofType: ext, inDirectory: "Assets") ??
								Bundle.main.path(forResource: baseName, ofType: ext) {
				if let image = UIImage(contentsOfFile: bundlePath) {
					imageCache.setObject(image, forKey: cacheKey)
					return image
				}
			}
		}
		
		return nil
	}
	
	// MARK: - Asset Health Verification
	
	public func verifyAssets() -> (audioFound: Bool, imagesFound: Bool) {
		var audioOk = false
		var imagesOk = false
		
		// Quick check for first station texture
		if loadImage(named: "gtav_radio_stations_texture_512") != nil {
			imagesOk = true
		}
		
		// Quick check for any test audio path
		if audioFilePath(resource: "MONO_BCR_COMMUNITY_HOUR", directory: "RADIO_11_TALK_02/mono_bcr_community_hour/") != nil {
			audioOk = true
		}
		
		return (audioOk, imagesOk)
	}
}

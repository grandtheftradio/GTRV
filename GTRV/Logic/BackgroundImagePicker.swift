//
//  BackgroundImagePicker.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI
import PhotosUI

@MainActor class BackgroundImagePicker: ObservableObject {
	@Published var uiImage: UIImage?
	@Published var imageSelection: PhotosPickerItem? {
		didSet {
			if let imageSelection {
				Task {
					try await loadTransferable(from: imageSelection)
				}
			}
		}
	}
	func loadTransferable(from imageSelection: PhotosPickerItem?) async throws {
		do {
			if let data = try await imageSelection?.loadTransferable(type: Data.self) {
				if let uiImage = UIImage(data: data) {
					self.uiImage = uiImage
				}
			}
		} catch {
			print(error.localizedDescription)
			uiImage = nil
		}
	}
}

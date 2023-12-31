//
//  UIImage.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

extension UIImage {
	func saveImage(imageName: String) {
		guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
		let fileName = imageName
		let fileURL = documentsDirectory.appendingPathComponent(fileName)
		guard let data = self.jpegData(compressionQuality: 1) else { return }
		//Checks if file exists, removes it if so.
		if FileManager.default.fileExists(atPath: fileURL.path) {
			do {
				try FileManager.default.removeItem(atPath: fileURL.path)
			} catch let removeError {
				print("couldn't remove file at path", removeError)
			}
		}
		do {
			try data.write(to: fileURL)
		} catch let error {
			print("error saving file with error", error)
		}
	}
	
	static func loadImageFromDiskWith(fileName: String) -> UIImage? {
		let documentDirectory = FileManager.SearchPathDirectory.documentDirectory
		let userDomainMask = FileManager.SearchPathDomainMask.userDomainMask
		let paths = NSSearchPathForDirectoriesInDomains(documentDirectory, userDomainMask, true)
		if let dirPath = paths.first {
			let imageUrl = URL(fileURLWithPath: dirPath).appendingPathComponent(fileName)
			let image = UIImage(contentsOfFile: imageUrl.path)
			return image
		}
		return nil
	}
	
	static func removeImage(fileName: String){
		guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
		let fileURL = documentsDirectory.appendingPathComponent(fileName)
		if FileManager.default.fileExists(atPath: fileURL.path) {
			do {
				try FileManager.default.removeItem(atPath: fileURL.path)
			} catch let removeError {
				print("couldn't remove file at path", removeError)
			}
		}
	}
}

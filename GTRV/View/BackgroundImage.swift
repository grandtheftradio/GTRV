//
//  BackgroundImage.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct BackgroundImage: View {
	
	var pickerView: Bool
	var bgUIImage: UIImage?
	
	var body: some View {
		if let customBackgroundUIImage = bgUIImage {
			Image(uiImage: customBackgroundUIImage)
				.resizable()
				.scaledToFill()
				.blur(
					radius: pickerView ? 0.0 : 2.5
				)
				.overlay(
					Color.black.opacity(pickerView ? 0.0 : 0.5)
				)
		} else {
			let fgUIImage = AssetManager.shared.loadImage(named: "beach_fg") ?? UIImage(named: "beach_fg")
			let bgUIImage = AssetManager.shared.loadImage(named: "beach_bg") ?? UIImage(named: "beach_bg")
			
			Group {
				if let fg = fgUIImage, let bg = bgUIImage {
					Image(uiImage: fg)
						.resizable()
						.scaledToFit()
						.padding(.top, 25.0)
						.background(
							Image(uiImage: bg)
								.resizable()
								.scaledToFill()
								.padding(.bottom, 50.0)
						)
				} else if let bg = bgUIImage {
					Image(uiImage: bg)
						.resizable()
						.scaledToFill()
				} else if let fg = fgUIImage {
					Image(uiImage: fg)
						.resizable()
						.scaledToFit()
				} else {
					Color.black
				}
			}
			.frame(
				maxWidth: .infinity,
				maxHeight: .infinity
			)
			.blur(
				radius: pickerView ? 0.0 : 2.5
			)
			.overlay(
				Color.black.opacity(pickerView ? 0.0 : 0.5)
			)
		}
	}
}

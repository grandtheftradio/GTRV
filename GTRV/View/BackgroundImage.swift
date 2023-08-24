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
			Image("beach_fg")
				.resizable()
				.scaledToFit()
				.padding(.top, 25.0)
				.background(
					Image("beach_bg")
						.resizable()
						.scaledToFill()
						.padding(.bottom, 50.0)
				)
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

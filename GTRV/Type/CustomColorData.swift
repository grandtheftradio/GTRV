//
//  CustomColorData.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct CustomColorData {
	private var colorKey: String = "colorPickerColor"
	private let userDefaults: UserDefaults = UserDefaults.standard
	
	func saveColor(color: Color) {
		let color = UIColor(color).cgColor
		
		if let components = color.components {
			userDefaults.set(components, forKey: colorKey)
		}
	}
	
	func loadColor() -> Color {
		guard let colorData: [CGFloat] = userDefaults.object(forKey: colorKey) as? [CGFloat] else {return customColor}
		let color: Color = Color(
			.sRGB,
			red: colorData[0],
			green: colorData[1],
			blue: colorData[2],
			opacity: colorData[3]
		)
		return color
	}
}

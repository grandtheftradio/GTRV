//
//  ColorSelectorName.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct ColorSelectorName: View {
	var name: String
	var selected: Bool
	var color: Color
	
	var body: some View {
		Text(name)
			.foregroundColor(
				selected ? .black : color
			)
	}
}

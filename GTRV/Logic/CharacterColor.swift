//
//  CharacterColor.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

func CharacterColor(_ character: String) -> Color {
	switch character {
	case "Franklin":
		return Color(
			red: 0.598,
			green: 0.910,
			blue: 0.602
		)
	case "Michael":
		return Color(
			red: 0.319,
			green: 0.731,
			blue: 0.967
		)
	case "Trevor":
		return Color(
			red: 0.996,
			green: 0.475,
			blue: 0.212
		)
	default://Custom
		return customColor
	}
}

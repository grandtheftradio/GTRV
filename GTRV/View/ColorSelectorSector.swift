//
//  ColorSelectorSector.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct ColorSelectorSector: View {
	var rotation: Double
	var offsetX: Double
	var offsetY: Double
	var selected: Bool
	var color: Color
	
	var body: some View {
		if selected {
			Sector(
				start: .degrees(0.0),
				end: .degrees(90.0)
			)
			.fill(
				color
			)
			.rotationEffect(
				.degrees(rotation)
			)
			.offset(
				x: offsetX,
				y: offsetY
			)
		} else {
			Sector(
				start: .degrees(0.0),
				end: .degrees(90.0)
			)
			.stroke(
				color,
				lineWidth: 2
			)
			.rotationEffect(
				.degrees(rotation)
			)
			.offset(
				x: offsetX,
				y: offsetY
			)
		}
	}
}

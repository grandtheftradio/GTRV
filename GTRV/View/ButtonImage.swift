//
//  ButtonImage.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct ButtonImage: View {
	var stationNumber: Int
	var image: String
	var row: Int
	var column: Int
	
	var body: some View {
		Image(image)
			.offset(
				x: ((-128.0 * Double(row)) + 128),
				y: ((-128.0 * Double(column)) + 128)
			)
			.frame(
				width: 128,
				height: 128,
				alignment: .topLeading
			)
			.background(
				Color(
					red: 0.0,
					green: 0.0,
					blue: 0.0
				)
			)
	}
}

//
//  RadioStationButton.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct RadioStationButton: View {
	var selected: Int
	var station: RadioStation
	var isStopped: Bool
	var highlightColor: String
	
	var body: some View {
		ZStack {
			switch station.number {
			default:
				ButtonImage(
					stationNumber: station.number,
					image: station.image.name,
					row: station.image.row,
					column: station.image.column
				)
				.mask(
					Circle()
						.opacity(
							(selected == station.number) ? 1.0 : 0.30
						)
				)
				.overlay(
					Circle()
						.stroke(
							CharacterColor(highlightColor)
							.opacity(
								selected == station.number ? 1.0 : 0.0
							),
							lineWidth: 12
						)
				)
				.padding(
					.leading,
					((selected == station.number) && (station.number != 10)) ? 10.0 : 0.0
				)
			}
			if (selected == station.number) {
				Image(systemName: "play.fill")
					.font(
						.system(
							size: 80,
							weight: .bold
						)
					)
					.foregroundColor(
						CharacterColor(highlightColor)
					)
					.opacity(
						(isStopped && (station.number != 10)) ? 1.0 : 0.0
					)
			}
		}
	}
}

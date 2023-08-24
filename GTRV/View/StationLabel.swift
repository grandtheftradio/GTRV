//
//  StationLabel.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct StationLabel: View {
	
	var album: String
	var artist: String
	var title: String
	
	var body: some View {
		ViewThatFits {
			ZStack {
				ZStack {
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: 1.0, y: 0.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: 1.0, y: 1.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: 0.0, y: 1.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: -1.0, y: 1.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: -1.0, y: 0.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: -1.0, y: -1.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: -1.0, y: 0.0)
					
					VStack(alignment: .center) {
						Text(album)
						Text("")
						Text(artist)
						Text("")
						Text(title)
					}
					.offset(x: 1.0, y: -1.0)
				}
				.foregroundColor(
					Color(
						red: 0.0,
						green: 0.0,
						blue: 0.0
					)
				)
				
				VStack(alignment: .center) {
					Text(album)
					Text("")
					Text(artist)
					Text("")
					Text(title)
				}
				.foregroundColor(
					Color(
						red: 1.0,
						green: 1.0,
						blue: 1.0
					)
				)
				
			}
			.font(
				.system(
					size: CGFloat(integerLiteral: 20),
					weight: .bold
				)
			)
		}
		.multilineTextAlignment(
			.center
		)
	}
}

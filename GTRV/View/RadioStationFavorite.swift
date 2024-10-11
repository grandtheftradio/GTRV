//
//  RadioStationFavorite.swift
//  GTRV
//
//  Created by grandtheftradio on 10/11/24.
//

import SwiftUI

struct RadioStationFavorite: View {
	
	var stationName: String
	@State var favoriteStation: Bool
	
	var body: some View {
		Button {
			favoriteStation.toggle()
			favorite[stationName] = self.favoriteStation
		} label: {
			HStack {
				Text(stationName)
				
				Spacer()
				
				Image(systemName: (favorite[stationName] ?? false) ? "checkmark.square" : "square")
					.foregroundColor(.black)
					.frame(width:20,height:20)
					.background(.white)
						
			}
		}
	}
}

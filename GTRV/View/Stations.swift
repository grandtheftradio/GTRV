//
//  Stations.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct Stations: View {
	
	@StateObject var AudioPlayer: AudioPlayerDelegate
	@StateObject var viewModel: ViewModel
	
	var body: some View {
		ZStack {
			// STATION BUTTONS
			VStack {
				ScrollView {
					ScrollViewReader { scrollViewProxy in
						VStack {
							ForEach(RadioStations) {station in
								HStack {
									if ((AudioPlayer.selectedStationNumber != station.number) || (AudioPlayer.selectedStationNumber == 10)) {
										Spacer()
									}
									Button {
										AudioPlayer.tuneIn(station)
										if (!AudioPlayer.initialized) {
											AudioPlayer.setupRemoteControls()
											AudioPlayer.initialized = true
											AudioPlayer.setupNotifications()
										}
									} label: {
										RadioStationButton(
											selected: AudioPlayer.selectedStationNumber,
											station: station,
											isStopped: AudioPlayer.stopped,
											highlightColor: viewModel.appColor
										)
									}
									Spacer()
									if ((AudioPlayer.selectedStationNumber == station.number) && (AudioPlayer.selectedStationNumber != 10)) {
										StationLabel(
											album: AudioPlayer.label["album"] ?? "",
											artist: AudioPlayer.label["artist"] ?? "",
											title: AudioPlayer.label["title"] ?? ""
										)
										Spacer()
									}
								}
								.id(station.number)
							}
						}
						.padding(
							.top
						)
						.onAppear {
							scrollViewProxy.scrollTo(
								currentStationNumber,
								anchor: .center
							)
						}
					}
					
					
				}
			}
			.background(
				BackgroundImage(
					pickerView: false,
					bgUIImage: customBackgroundUIImage
				)
			)
			.preferredColorScheme(
				.dark
			)
			
			
			// SETTINGS BUTTON
			VStack {
				Spacer()
				HStack {
					Spacer()
					Button {
						/*switch appColor {
						case "Michael":
							appColor = "Franklin"
						case "Franklin":
							appColor = "Trevor"
						case "Trevor":
							appColor = "Custom"
						default:
							appColor = "Michael"
						}*/
						AudioPlayer.settingsView.toggle()
					} label: {
						Image("settings.icon.\(viewModel.appColor.lowercased()).SFSymbol")
							.font(
								.system(
									size: 30
								)
							)
							.foregroundColor(
								CharacterColor(viewModel.appColor)
							)
							.opacity(
								0.75
							)
							.padding(
								.trailing
							)
					}
				}
			}
		}
		.persistentSystemOverlays(
			.hidden
		)
	}
}

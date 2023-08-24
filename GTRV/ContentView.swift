//
//  ContentView.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

struct ContentView: View {
	
	init() {
		startPlaying = true
	}
	
	@StateObject var AudioPlayer: AudioPlayerDelegate = AudioPlayerDelegate()
	@StateObject var backgroundImagePicker: BackgroundImagePicker = BackgroundImagePicker()
	@StateObject var viewModel: ViewModel = ViewModel()
	
	private var customColorData: CustomColorData = CustomColorData()
	
	var timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
	
	var body: some View {
		if AudioPlayer.settingsView {
			Settings(
				AudioPlayer: AudioPlayer,
				backgroundImagePicker: backgroundImagePicker,
				viewModel: viewModel,
				customColorData: customColorData
			)
		} else {
			Stations(
				AudioPlayer: AudioPlayer,
				viewModel: viewModel
			)
			.onAppear {
				viewModel.appColor = UserDefaults.standard.string(forKey: "appColor") ?? "Franklin"
				customColor = customColorData.loadColor()
				viewModel.colorPickerColor = customColor
				if (currentStationNumber != 10) {
					if startPlaying {
						for station in RadioStations {
							if station.number == currentStationNumber {
								currentStation = station
								AudioPlayer.tuneIn(currentStation)
								if (!AudioPlayer.initialized) {
									AudioPlayer.setupRemoteControls()
									AudioPlayer.initialized = true
									AudioPlayer.setupNotifications()
								}
								break
							}
						}
						startPlaying = false
					}
				}
				
			}
			.onReceive(
				timer,
				perform: {_ in
					AudioPlayer.monitorSong()
					AudioPlayer.updateLabel()
				}
			)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

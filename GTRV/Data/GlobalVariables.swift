//
//  GlobalVariables.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI
import AVFoundation

var adPlayed: Bool = false
var audioPlayer: [String: [Int: AVAudioPlayer]] = [
	"Radio Off": [:],
	"Media Player": [:],
	"Blaine County Radio": [:],
	"The Music Locker": [:],
	"MOTOMAMI Los Santos": [:],
	"Blue Ark": [:],
	"Worldwide FM": [:],
	"FlyLo FM": [:],
	"The Lowdown 91.1": [:],
	"The Lab": [:],
	"Radio Mirror Park": [:],
	"Kult FM": [:],
	"Space 103.2": [:],
	"Vinewood Boulevard Radio": [:],
	"Blonded Los Santos 97.8 FM": [:],
	"Los Santos Underground Radio": [:],
	"iFruit Radio": [:],
	"Self Radio": [:],
	"Still Slipping Los Santos": [:],
	"Los Santos Rock Radio": [:],
	"Non-Stop-Pop FM": [:],
	"Radio Los Santos": [:],
	"Channel X": [:],
	"West Coast Talk Radio": [:],
	"Rebel Radio": [:],
	"Soulwax FM": [:],
	"East Los FM": [:],
	"West Coast Classics": [:]
]
var audioPlayerSong: [String: Song?] = [
	"Radio Off": nil,
	"Media Player": nil,
	"Blaine County Radio": nil,
	"The Music Locker": nil,
	"MOTOMAMI Los Santos": nil,
	"Blue Ark": nil,
	"Worldwide FM": nil,
	"FlyLo FM": nil,
	"The Lowdown 91.1": nil,
	"The Lab": nil,
	"Radio Mirror Park": nil,
	"Kult FM": nil,
	"Space 103.2": nil,
	"Vinewood Boulevard Radio": nil,
	"Blonded Los Santos 97.8 FM": nil,
	"Los Santos Underground Radio": nil,
	"iFruit Radio": nil,
	"Self Radio": nil,
	"Still Slipping Los Santos": nil,
	"Los Santos Rock Radio": nil,
	"Non-Stop-Pop FM": nil,
	"Radio Los Santos": nil,
	"Channel X": nil,
	"West Coast Talk Radio": nil,
	"Rebel Radio": nil,
	"Soulwax FM": nil,
	"East Los FM": nil,
	"West Coast Classics": nil
]

var currentAlbum: String = ""
var currentSong: Song?
let currentStationNumberKey: String = "currentStationNumber"
var currentStationNumber:Int? = {
	let userDefaults = UserDefaults.standard
	if userDefaults.object(forKey: currentStationNumberKey) == nil {
		return 10
	} else {
		return userDefaults.integer(forKey: currentStationNumberKey)
	}
}()
var currentStation: RadioStation = RadioStations[0] //Radio Off
let customBackgroundFileName: String = "customBackgroundImage"
var customBackgroundUIImage: UIImage? = UIImage.loadImageFromDiskWith(fileName: customBackgroundFileName)
var customColor: Color = Color(
	red: 1.0,
	green: 1.0,
	blue: 1.0
)

var eveningTimeIntroPlayed: Bool = false

let favoriteKey: String = "favorite"
var favorite: [String: Bool] = {
	var favoriteStations: [String: Bool] = [
		"Radio Off": true,
		"Media Player": true,
		"The Music Locker": true,
		"Still Slipping Los Santos": false,
		"Kult FM": true,
		"iFruit Radio": false,
		"Worldwide FM": true,
		"FlyLo FM": true,
		"Los Santos Underground Radio": true,
		"Blonded Los Santos 97.8 FM": true,
		"Los Santos Rock Radio": true,
		"Non-Stop-Pop FM": true,
		"West Coast Classics": true,
		"Radio Los Santos": true,
		"The Lab": true,
		"Radio Mirror Park": true,
		"Soulwax FM": true,
		"East Los FM": true,
		"Rebel Radio": true,
		"Channel X": true,
		"Vinewood Boulevard Radio": true,
		"Space 103.2": true,
		"The Lowdown 91.1": true,
		"Blue Ark": true,
		"Blaine County Radio": true,
		"West Coast Talk Radio": true,
		"MOTOMAMI Los Santos": true
	]
	let userDefaults = UserDefaults.standard
	if let favoriteStationNames: String = userDefaults.string(forKey: favoriteKey) {
		favoriteStations.keys.forEach {stationName in
			if favoriteStationNames.contains(stationName) {
				favoriteStations[stationName] = true
			} else {
				if stationName != "Radio Off" {
					favoriteStations[stationName] = false
				}
			}
		}
	}
	return favoriteStations
}()


var introDuration: TimeInterval = 0.0
var introTime: TimeInterval = 0.0

var lastPlayed: String = ""

var morningTimeIntroPlayed: Bool = false

var newsPlayed: Bool = false

var ordered: [String: Bool] = [
	"Radio Off": false,
	"Media Player": false,
	"Blaine County Radio": false,
	"The Music Locker": false,
	"MOTOMAMI Los Santos": false,
	"Blue Ark": false,
	"Worldwide FM": false,
	"FlyLo FM": false,
	"The Lowdown 91.1": false,
	"The Lab": false,
	"Radio Mirror Park": false,
	"Kult FM": false,
	"Space 103.2": false,
	"Vinewood Boulevard Radio": false,
	"Blonded Los Santos 97.8 FM": false,
	"Los Santos Underground Radio": false,
	"iFruit Radio": false,
	"Self Radio": false,
	"Still Slipping Los Santos": false,
	"Los Santos Rock Radio": false,
	"Non-Stop-Pop FM": false,
	"Radio Los Santos": false,
	"Channel X": false,
	"West Coast Talk Radio": false,
	"Rebel Radio": false,
	"Soulwax FM": false,
	"East Los FM": false,
	"West Coast Classics": false
]
var outroDuration: TimeInterval = 0.0
var outroTime: TimeInterval = 0.0
var outroType: String = ""

var playIntro: Bool = false
var playOutro: Bool = false
var playedStations: [Int] = []

//var radioStationIndex: Int = 10

var startPlaying: Bool = false

let tuneDate: Date = Date.now
var Tune: [String: TuneData] = [
	"Radio Off": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Media Player": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Blaine County Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"The Music Locker": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"MOTOMAMI Los Santos": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Blue Ark": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Worldwide FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"FlyLo FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"The Lowdown 91.1": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"The Lab": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Radio Mirror Park": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Kult FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Space 103.2": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Vinewood Boulevard Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Blonded Los Santos 97.8 FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Los Santos Underground Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"iFruit Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Self Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Still Slipping Los Santos": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Los Santos Rock Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Non-Stop-Pop FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Radio Los Santos": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Channel X": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"West Coast Talk Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Rebel Radio": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"Soulwax FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"East Los FM": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	),
	"West Coast Classics": TuneData(
		In: false,
		Position: 0.0,
		Duration: 0.0,
		Time: tuneDate
	)
]
var tuneIn: Bool = true

var unplayedSongs: [String: [Song]] = [
	"Radio Off": [],
	"Media Player": [],
	"Blaine County Radio": [],
	"The Music Locker": [],
	"MOTOMAMI Los Santos": [],
	"Blue Ark": [],
	"Worldwide FM": [],
	"FlyLo FM": [],
	"The Lowdown 91.1": [],
	"The Lab": [],
	"Radio Mirror Park": [],
	"Kult FM": [],
	"Space 103.2": [],
	"Vinewood Boulevard Radio": [],
	"Blonded Los Santos 97.8 FM": [],
	"Los Santos Underground Radio": [],
	"iFruit Radio": [],
	"Self Radio": [],
	"Still Slipping Los Santos": [],
	"Los Santos Rock Radio": [],
	"Non-Stop-Pop FM": [],
	"Radio Los Santos": [],
	"Channel X": [],
	"West Coast Talk Radio": [],
	"Rebel Radio": [],
	"Soulwax FM": [],
	"East Los FM": [],
	"West Coast Classics": []
]

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
	"The Blue Ark": [:],
	"Worldwide FM": [:],
	"FlyLo FM": [:],
	"The Low Down 91.1": [:],
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
	"WCTR": [:],
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
	"The Blue Ark": nil,
	"Worldwide FM": nil,
	"FlyLo FM": nil,
	"The Low Down 91.1": nil,
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
	"WCTR": nil,
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
var currentStation: RadioStation = RadioStations[9] //No Radio
let customBackgroundFileName: String = "customBackgroundImage"
var customBackgroundUIImage: UIImage? = UIImage.loadImageFromDiskWith(fileName: customBackgroundFileName)
var customColor: Color = Color(
	red: 1.0,
	green: 1.0,
	blue: 1.0
)

var eveningTimeIntroPlayed: Bool = false

var introDuration: TimeInterval = 0.0
var introTime: TimeInterval = 0.0

var lastPlayed: String = ""

var morningTimeIntroPlayed: Bool = false

var newsPlayed: Bool = false

var order: [String: String] = [
	"Radio Off": RadioStations[0].order,
	"Media Player": RadioStations[1].order,
	"Blaine County Radio": RadioStations[2].order,
	"The Music Locker": RadioStations[3].order,
	"MOTOMAMI Los Santos": RadioStations[4].order,
	"The Blue Ark": RadioStations[5].order,
	"Worldwide FM": RadioStations[6].order,
	"FlyLo FM": RadioStations[7].order,
	"The Low Down 91.1": RadioStations[8].order,
	"The Lab": RadioStations[9].order,
	"Radio Mirror Park": RadioStations[10].order,
	"Kult FM": RadioStations[11].order,
	"Space 103.2": RadioStations[12].order,
	"Vinewood Boulevard Radio": RadioStations[13].order,
	"Blonded Los Santos 97.8 FM": RadioStations[14].order,
	"Los Santos Underground Radio": RadioStations[15].order,
	"iFruit Radio": RadioStations[16].order,
	"Self Radio": RadioStations[17].order,
	"Still Slipping Los Santos": RadioStations[18].order,
	"Los Santos Rock Radio": RadioStations[19].order,
	"Non-Stop-Pop FM": RadioStations[20].order,
	"Radio Los Santos": RadioStations[21].order,
	"Channel X": RadioStations[22].order,
	"WCTR": RadioStations[23].order,
	"Rebel Radio": RadioStations[24].order,
	"Soulwax FM": RadioStations[25].order,
	"East Los FM": RadioStations[26].order,
	"West Coast Classics": RadioStations[27].order
]
var outroDuration: TimeInterval = 0.0
var outroTime: TimeInterval = 0.0
var outroType: String = ""

var playIntro: Bool = false
var playOutro: Bool = false
var playedStations: [Int] = []

var radioStationIndex: Int = 10
var rotated: [String: Bool] = [
	"Radio Off": false,
	"Media Player": false,
	"Blaine County Radio": false,
	"The Music Locker": false,
	"MOTOMAMI Los Santos": false,
	"The Blue Ark": false,
	"Worldwide FM": false,
	"FlyLo FM": false,
	"The Low Down 91.1": false,
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
	"WCTR": false,
	"Rebel Radio": false,
	"Soulwax FM": false,
	"East Los FM": false,
	"West Coast Classics": false
]

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
	"The Blue Ark": TuneData(
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
	"The Low Down 91.1": TuneData(
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
	"WCTR": TuneData(
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
	"The Blue Ark": [],
	"Worldwide FM": [],
	"FlyLo FM": [],
	"The Low Down 91.1": [],
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
	"WCTR": [],
	"Rebel Radio": [],
	"Soulwax FM": [],
	"East Los FM": [],
	"West Coast Classics": []
]

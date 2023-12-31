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
	"Los Santos Rock Radio": [:],
	"Non-Stop-Pop FM": [:],
	"Radio Los Santos": [:],
	"Channel X": [:],
	"WCTR": [:],
	"Rebel Radio": [:],
	"Soulwax FM": [:],
	"East Los FM": [:],
	"West Coast Classics": [:],
	"Radio Off": [:],
	"Blaine County Radio": [:],
	"The Blue Ark": [:],
	"Worldwide FM": [:],
	"FlyLo FM": [:],
	"The Low Down 91.1": [:],
	"The Lab": [:],
	"Radio Mirror Park": [:],
	"Space 103.2": [:],
	"Vinewood Boulevard Radio": [:],
	"Blonded Los Santos 97.8 FM": [:],
	"Los Santos Underground Radio": [:]
]
var audioPlayerSong: [String: Song?] = [
	"Los Santos Rock Radio": nil,
	"Non-Stop-Pop FM": nil,
	"Radio Los Santos": nil,
	"Channel X": nil,
	"WCTR": nil,
	"Rebel Radio": nil,
	"Soulwax FM": nil,
	"East Los FM": nil,
	"West Coast Classics": nil,
	"Radio Off": nil,
	"Blaine County Radio": nil,
	"The Blue Ark": nil,
	"Worldwide FM": nil,
	"FlyLo FM": nil,
	"The Low Down 91.1": nil,
	"The Lab": nil,
	"Radio Mirror Park": nil,
	"Space 103.2": nil,
	"Vinewood Boulevard Radio": nil,
	"Blonded Los Santos 97.8 FM": nil,
	"Los Santos Underground Radio": nil
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

var outroDuration: TimeInterval = 0.0
var outroTime: TimeInterval = 0.0
var outroType: String = ""

var playIntro: Bool = false
var playOutro: Bool = false
var playedStations: [Int] = []

var radioStationIndex: Int = 10
var rotated: [String: Bool] = [
	"Los Santos Rock Radio": false,
	"Non-Stop-Pop FM": false,
	"Radio Los Santos": false,
	"Channel X": false,
	"WCTR": false,
	"Rebel Radio": false,
	"Soulwax FM": false,
	"East Los FM": false,
	"West Coast Classics": false,
	"Radio Off": false,
	"Blaine County Radio": false,
	"The Blue Ark": false,
	"Worldwide FM": false,
	"FlyLo FM": false,
	"The Low Down 91.1": false,
	"The Lab": false,
	"Radio Mirror Park": false,
	"Space 103.2": false,
	"Vinewood Boulevard Radio": false,
	"Blonded Los Santos 97.8 FM": false,
	"Los Santos Underground Radio": false
]

var startPlaying: Bool = false

let tuneDate: Date = Date.now
var Tune: [String: TuneData] = [
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
	),
	"Radio Off": TuneData(
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
	)
]
var tuneIn: Bool = true

var unplayedSongs: [String: [Song]] = [
	"Los Santos Rock Radio": [],
	"Non-Stop-Pop FM": [],
	"Radio Los Santos": [],
	"Channel X": [],
	"WCTR": [],
	"Rebel Radio": [],
	"Soulwax FM": [],
	"East Los FM": [],
	"West Coast Classics": [],
	"Radio Off": [],
	"Blaine County Radio": [],
	"The Blue Ark": [],
	"Worldwide FM": [],
	"FlyLo FM": [],
	"The Low Down 91.1": [],
	"The Lab": [],
	"Radio Mirror Park": [],
	"Space 103.2": [],
	"Vinewood Boulevard Radio": [],
	"Blonded Los Santos 97.8 FM": [],
	"Los Santos Underground Radio": []
]

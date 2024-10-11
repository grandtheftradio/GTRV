//
//  Unplayed.swift
//  GTRV
//
//  Created by grandtheftradio on 9/26/24.
//

import Foundation

func Unplayed(_ songs: [Song], _ order: String) -> [Song] {
	var up: [Song] = []
	
	switch (order) {
	case "rotate":
		let frs: Int = Int(arc4random_uniform(UInt32(songs.count)))
		var rotatedSongs: [Song] = []
		for rs in frs..<songs.count {
			rotatedSongs.append(songs[rs])
		}
		up = rotatedSongs
	case "random":
		let randimizedSongs: [Song] = songs.shuffled()
		up = randimizedSongs
	case "reverse":
		let reversedSongs: [Song] = songs.reversed()
		up = reversedSongs
	case "alternate":
		var altSongs1: [Song] = []
		var altSongs2: [Song] = []
		for alt in 0..<songs.count {
			if (alt < (songs.count / 2)) {
				altSongs1.append(songs[alt])
			} else {
				altSongs2.append(songs[alt])
			}
		}
		
		let altSongs: [[Song]] = [altSongs1, altSongs2]
		let alternatedSongs: [Song] = (0..<altSongs.map{$0.count}.max()!).flatMap{i in altSongs.filter{i<$0.count}.map{$0[i]}}
		
		up = alternatedSongs
	case "alternate_r":
		let alternatedSongs: [Song] = Unplayed(songs,"alternate")
		let alternatedReversedSongs: [Song] = alternatedSongs.reversed()
		up = alternatedReversedSongs
	default: //static
		up = songs
	}
	
	var unplayed: [Song] = []
	if (up.count <= 2) {
		unplayed = up
	} else {
		var s = 0
		for song in up {
			s += 1
			let firstSong: Bool = (s == 1)
			let lastSong: Bool = (s == up.count)
			if (firstSong || lastSong) {
				unplayed.append(song)
			} else {
				let skip: Bool = (Double.random(in: 1.0..<(100.0 + 1)) > song.frequency)
				if !skip {
					unplayed.append(song)
				}
			}
		}
	}
	
	return unplayed
}

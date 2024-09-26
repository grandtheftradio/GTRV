//
//  Unplayed.swift
//  GTRV
//
//  Created by grandtheftradio on 9/26/24.
//

import Foundation

func Unplayed(_ songs: [Song], _ order: String) -> [Song] {
	switch (order) {
	case "rotate":
		let frs: Int = Int(arc4random_uniform(UInt32(songs.count)))
		var rotatedSongs: [Song] = []
		for rs in frs..<songs.count {
			rotatedSongs.append(songs[rs])
		}
		return rotatedSongs
	case "random":
		let randimizedSongs: [Song] = songs.shuffled()
		return randimizedSongs
	case "reverse":
		let reversedSongs: [Song] = songs.reversed()
		return reversedSongs
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
		
		return alternatedSongs
	case "alternate_r":
		let alternatedSongs: [Song] = Unplayed(songs,"alternate")
		let alternatedReversedSongs: [Song] = alternatedSongs.reversed()
		return alternatedReversedSongs
	default: //static
		return songs
	}
}

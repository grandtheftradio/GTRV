//
//  AudioPath.swift
//  GTRV
//
//  Created by grandtheftradio on 9/27/24.
//

import Foundation

func AudioPath(resource: String, directory: String) -> String? {
	var audioPath: String?
	if let ap = Bundle.main.path(forResource: resource, ofType: "mp3", inDirectory: directory) {
		audioPath = ap
	} else if let apA = Bundle.main.path(forResource: resource, ofType: "mp3", inDirectory: "Audio/\(directory)") {
		audioPath = apA
	} else {
		audioPath = nil
	}
	return audioPath
}

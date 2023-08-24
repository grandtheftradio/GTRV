//
//  StopRadio.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import AVFoundation

public func StopRadio() {
	//print("StopRadio")
	for (_, player) in audioPlayer {
		player[1]?.stop()
		player[2]?.stop()
		player[3]?.stop()
	}
	try! AVAudioSession.sharedInstance().setActive(false)
}

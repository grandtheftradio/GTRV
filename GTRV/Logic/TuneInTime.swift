//
//  TuneInTime.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import Foundation

// ELAPSED
func TuneInTime(tune: TuneData) -> (time: TimeInterval, playNext: Bool) {
	let currentTime: Date = Date.now
	let stopTime: Date = tune.Time
	let elapsedTime: TimeInterval = currentTime.timeIntervalSince(stopTime)
	let currentPosition: TimeInterval = tune.Position
	let currentDuration: TimeInterval = tune.Duration
	let remainingTime: TimeInterval = (currentDuration - currentPosition)
	var tuneInTime: TimeInterval = 0.0
	if (elapsedTime < remainingTime) {
		tuneInTime = (currentPosition + elapsedTime)
	} else {
		
		tuneInTime = Double.random(in: 0.0..<currentDuration)
	}
	/*
	print("stopTime: \(stopTime)") // play stopped at
	print("currentTime: \(currentTime)") // play stopped at
	print("elapsedTime: \(elapsedTime)") // time elapsed since stopped stop
	print("currentPosition: \(currentPosition)") // song position when stopped
	print("currentDuration: \(currentDuration)") // duration of stopped song
	print("remainingTime: \(remainingTime)") // time remaining when stopped
	print("tuneInTime: \(tuneInTime)") // calculated tune in time
	print("===============================")
	*/
	return (tuneInTime, (elapsedTime >= remainingTime))
}

// RANDOM
func TuneInTime(duration: TimeInterval) -> TimeInterval {
	return Double.random(in: 0.0..<duration)
}

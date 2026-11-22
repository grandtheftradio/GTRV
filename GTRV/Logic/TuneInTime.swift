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
		if (currentDuration > 0.0) {
			tuneInTime = Double.random(in: 0.0..<currentDuration)
		} else {
			tuneInTime = 0.0
		}
	}
	return (tuneInTime, (elapsedTime >= remainingTime))
}

// RANDOM
func TuneInTime(duration: TimeInterval) -> TimeInterval {
	if (duration > 0.0) {
		return Double.random(in: 0.0..<duration)
	} else {
		return 0.0
	}
}

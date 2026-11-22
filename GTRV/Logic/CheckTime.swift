//
//  CheckTime.swift
//  GTRV
//
//  Created by grandtheftradio on 12/2/24.
//

import SwiftUI

func CheckTime(_ time: String) -> Bool {
	let currentDateTime: Date = Date()
	let dateFormatter: DateFormatter = {
		let df: DateFormatter = DateFormatter()
		df.dateFormat = "yyyy-MM-dd"
		return df
	}()
	let currentDate: String = dateFormatter.string(from: currentDateTime)
	
	var localTimeZoneIdentifier: String {
		return TimeZone.current.identifier
	}
	let dateTimeFormatter: DateFormatter = {
		let dtf: DateFormatter = DateFormatter()
		dtf.dateFormat = "yyyy-MM-dd HH:mm:ss"
		dtf.locale = Locale(identifier: localTimeZoneIdentifier)
		return dtf
	}()
	
	switch (time) {
	case "morning":
		let morningStartDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(morningStartTime)") ?? Date()
		let morningEndDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(morningEndTime)") ?? Date()
		return (morningStartDateTime <= currentDateTime) && (currentDateTime <= morningEndDateTime)
	case "evening":
		let eveningStartDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(eveningStartTime)") ?? Date()
		let eveningEndDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(eveningEndTime)") ?? Date()
		return (eveningStartDateTime <= currentDateTime) && (currentDateTime <= eveningEndDateTime)
	default:
		return false
	}
}

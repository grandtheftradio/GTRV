//
//  RadioStation.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

public struct RadioStation: Identifiable {
	let index: Int
	let number: Int
	let name: String
	let image: ImageData
	let order: String
	let plays: Plays
	let root: Root?
	let songs: [Song]?
	let general: General?
	let stationID: [StationID]?
	let solo: [Solo]?
	let time: [String: [String]]?
	let to: [String: [String]]?
	public var id: Int {
		number
	}
}

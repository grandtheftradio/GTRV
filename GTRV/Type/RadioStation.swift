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
	let root: String?
	let songs: [Song]?
	let general: General?
	let identity: [Identity]?
	let solo: [Solo]?
	let time: [String: [String]]?
	let to: [String: [String]]?
	public var id: Int {
		number
	}
}

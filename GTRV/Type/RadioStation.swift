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
	let image: String
	let imagePosition: Position
	let randomize: Bool
	let rotate: Bool
	let root: String?
	let songs: [Song]?
	let general: [String]?
    let general_root: String?
	let sid: [String]?
	let mono_solo: [String]?
	let time: [String: [String]]?
	let to: [String: [String]]?
	public var id: Int {
		number
	}
}
/*
public struct RadioStation: Identifiable {
	let index: Int
	let number: Int
	let name: String
	let image: String
	let imagePosition: Position
	let order: String
	let root: String?
	let songs: [Song]?
	let general: [String]?
	let general_root: String?
	let sid: [String]?
	let mono_solo: [String]?
	let time: [String: [String]]?
	let to: [String: [String]]?
	public var id: Int {
		number
	}
}
*/

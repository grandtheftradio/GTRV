//
//  StationID.swift
//  GTRV
//
//  Created by grandtheftradio on 9/11/24.
//

public struct StationID {
	let root: String
	let list: [String]
	
	public init(root: String, list: [String]) {
		self.root = root
		self.list = list
	}
}

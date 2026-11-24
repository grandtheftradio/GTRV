//
//  Root.swift
//  GTRV
//
//  Created by grandtheftradio on 10/28/24.
//

public struct Root {
	let station: String
	let song: String
	let intro: String?
	let general: String?
	let stationID: String?
	let solo: String?
	let time: String?
	let to: String?
	let ad: String?
	let news: String?
	
	public init(
		station: String,
		song: String,
		intro: String?,
		general: String?,
		stationID: String?,
		solo: String?,
		time: String?,
		to: String?,
		ad: String?,
		news: String?
	) {
		self.station = station
		self.song = song
		self.intro = intro
		self.general = general
		self.stationID = stationID
		self.solo = solo
		self.time = time
		self.to = to
		self.ad = ad
		self.news = news
	}
}

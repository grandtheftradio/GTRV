//
//  Plays.swift
//  GTRV
//
//  Created by grandtheftradio on 11/5/24.
//

public struct Plays {
	let songs: Bool
	let intros: Bool
	let generals: Bool
	let generalsIntro: Bool
	let generalsOutro: Bool
	let stationIDs: Bool
	let solos: Bool
	let times: Bool
	let tos: Bool
	let ads: Bool
	let news: Bool
	
	public init(
		songs: Bool,
		intros: Bool,
		generals: Bool,
		generalsIntro: Bool,
		generalsOutro: Bool,
		stationIDs: Bool,
		solos: Bool,
		times: Bool,
		tos: Bool,
		ads: Bool,
		news: Bool
	) {
		self.songs = songs
		self.intros = intros
		self.generals = generals
		self.generalsIntro = generalsIntro
		self.generalsOutro = generalsOutro
		self.stationIDs = stationIDs
		self.solos = solos
		self.times = times
		self.tos = tos
		self.ads = ads
		self.news = news
	}
}

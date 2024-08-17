//
//  RadioStations.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

public let RadioStations: [RadioStation] = [
	// MARK: Radio Off	#10
	RadioStation(
		index: 0,
		number: 10,
		name: "Radio Off",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 4,
			column: 4
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: Media Player
	RadioStation(
		index: 1,
		number: 26,
		name: "Media Player",
		image: "gta_radio_stations_texture11_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: Blaine County Radio
	RadioStation(
		index: 2,
		number: 11,
		name: "Blaine County Radio",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 3,
			column: 2
		),
		randomize: false,
		rotate: true,
		root: "RADIO_11_TALK_02",
		songs: [
			//MONO_BCR_COMMUNITY_HOUR
			Song(
				file: "MONO_BCR_COMMUNITY_HOUR",
				root: "RADIO_11_TALK_02/mono_bcr_community_hour/",
				labels: [
					Label(
						artist: "BCR Community Hour",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONO_BEYOND_INSEMINATION
			Song(
				file: "MONO_BEYOND_INSEMINATION",
				root: "RADIO_11_TALK_02/mono_beyond_insemination/",
				labels: [
					Label(
						artist: "Beyond Insemination",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONO_BLESS_YOUR_HEART
			Song(
				file: "MONO_BLESS_YOUR_HEART",
				root: "RADIO_11_TALK_02/mono_bless_your_heart/",
				labels: [
					Label(
						artist: "BLESS YOUR HEART",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONO_ZBEYOND_INSEMINATION_PART_2
			Song(
				file: "MONO_ZBEYOND_INSEMINATION_PART_2",
				root: "RADIO_11_TALK_02/mono_zbeyond_insemination_part_2/",
				labels: [
					Label(
						artist: "Beyond Insemination",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: ["01","02","03","04","05","06","07","08","09","10","11"],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: The Music Locker
	RadioStation(
		index: 3,
		number: 23,
		name: "The Music Locker",
		image: "gta_radio_stations_texture08_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: MOTOMAMI Los Santos
	RadioStation(
		index: 4,
		number: 27,
		name: "MOTOMAMI Los Santos",
		image: "gta_radio_stations_texture12_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: The Blue Ark
	RadioStation(
		index: 5,
		number: 12,
		name: "The Blue Ark",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 4,
			column: 3
		),
		randomize: true,
		rotate: false,
		root: "RADIO_12_REGGAE",
		songs: [
			//ADDI_TRUTH
			Song(
				file: "ADDI_TRUTH",
				root: "RADIO_12_REGGAE/addi_truth/",
				labels: [
					Label(
						artist: "VYBZ KARTEL",
						title: "Addi Truth",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//CHAPTER3
			Song(
				file: "CHAPTER3",
				root: "RADIO_12_REGGAE/chapter3/",
				labels: [
					Label(
						artist: "JOE GIBBS & THE PROFESSIONALS",
						title: "Chapter Three",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CHAPTER3_01",
						delay: 5.0
					),
					Intro(
						file: "CHAPTER3_02",
						delay: 5.0
					)
				]
			),
			//CRAZY_GIRL
			Song(
				file: "CRAZY_GIRL",
				root: "RADIO_12_REGGAE/crazy_girl/",
				labels: [
					Label(
						artist: "HALF PINT",
						title: "Crazy Girl",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CRAZY_GIRL_01",
						delay: 5.0
					),
					Intro(
						file: "CRAZY_GIRL_02",
						delay: 5.0
					)
				]
			),
			//DISCO_DEVIL
			Song(
				file: "DISCO_DEVIL",
				root: "RADIO_12_REGGAE/disco_devil/",
				labels: [
					Label(
						artist: "LEE SCRATCH PERRY & THE FULL EXPERIENCE",
						title: "Disco Devil",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DISCO_DEVIL_01",
						delay: 5.0
					),
					Intro(
						file: "DISCO_DEVIL_02",
						delay: 5.0
					)
				]
			),
			//GRUMBLIN_DUB
			Song(
				file: "GRUMBLIN_DUB",
				root: "RADIO_12_REGGAE/grumblin_dub/",
				labels: [
					Label(
						artist: "THE UPSETTERS",
						title: "Grumblin' Dub",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GRUMBLIN_DUB_01",
						delay: 5.0
					),
					Intro(
						file: "GRUMBLIN_DUB_02",
						delay: 5.0
					)
				]
			),
			//GUN_SHOT_A_FIRE
			Song(
				file: "GUN_SHOT_A_FIRE",
				root: "RADIO_12_REGGAE/gun_shot_a_fire/",
				labels: [
					Label(
						artist: "KONSHENS",
						title: "Gun Shot A Fire",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//I_AM_A_MADMAN
			Song(
				file: "I_AM_A_MADMAN",
				root: "RADIO_12_REGGAE/i_am_a_madman/",
				labels: [
					Label(
						artist: "LEE SCRATCH PERRY",
						title: "I Am A Madman",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_AM_A_MADMAN_01",
						delay: 5.0
					),
					Intro(
						file: "I_AM_A_MADMAN_02",
						delay: 5.0
					)
				]
			),
			//KINGSTON_BE_WISE
			Song(
				file: "KINGSTON_BE_WISE",
				root: "RADIO_12_REGGAE/kingston_be_wise/",
				labels: [
					Label(
						artist: "PROTOJE",
						title: "Kingston Be Wise",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//KINGSTON_TOWN
			Song(
				file: "KINGSTON_TOWN",
				root: "RADIO_12_REGGAE/kingston_town/",
				labels: [
					Label(
						artist: "BUSY SIGNAL",
						title: "Kingston Town",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "KINGSTON_TOWN_01",
						delay: 5.0
					),
					Intro(
						file: "KINGSTON_TOWN_02",
						delay: 5.0
					)
				]
			),
			//LOYALS
			Song(
				file: "LOYALS",
				root: "RADIO_12_REGGAE/loyals/",
				labels: [
					Label(
						artist: "DEMARCO",
						title: "Loyals (Royals Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONEY_COME_MONEY_GO
			Song(
				file: "MONEY_COME_MONEY_GO",
				root: "RADIO_12_REGGAE/money_come_money_go/",
				labels: [
					Label(
						artist: "LEE \"SCRATCH\" PERRY",
						title: "Money Come And Money Go",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MONEY_COME_MONEY_GO_01",
						delay: 5.0
					),
					Intro(
						file: "MONEY_COME_MONEY_GO_02",
						delay: 5.0
					)
				]
			),
			//MONEY_IN_MY_POCKET
			Song(
				file: "MONEY_IN_MY_POCKET",
				root: "RADIO_12_REGGAE/money_in_my_pocket/",
				labels: [
					Label(
						artist: "DENNIS BROWN",
						title: "Money In My Pocket",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MR_MONEY_MAN
			Song(
				file: "MR_MONEY_MAN",
				root: "RADIO_12_REGGAE/mr_money_man/",
				labels: [
					Label(
						artist: "DANNY HENSWORTH",
						title: "Mr. Money Man",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MR_MONEY_MAN_01",
						delay: 5.0
					),
					Intro(
						file: "MR_MONEY_MAN_02",
						delay: 5.0
					)
				]
			),
			//NIGHT_NURSE
			Song(
				file: "NIGHT_NURSE",
				root: "RADIO_12_REGGAE/night_nurse/",
				labels: [
					Label(
						artist: "GREGORY ISAACS",
						title: "Night Nurse",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NIGHT_NURSE_01",
						delay: 5.0
					),
					Intro(
						file: "NIGHT_NURSE_02",
						delay: 5.0
					)
				]
			),
			//NOBODY_MOVE_GET_HURT
			Song(
				file: "NOBODY_MOVE_GET_HURT",
				root: "RADIO_12_REGGAE/nobody_move_get_hurt/",
				labels: [
					Label(
						artist: "YELLOWMAN",
						title: "Nobody Move Nobody Get Hurt",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NOBODY_MOVE_GET_HURT_01",
						delay: 5.0
					),
					Intro(
						file: "NOBODY_MOVE_GET_HURT_02",
						delay: 5.0
					)
				]
			),
			//ODD_RAS
			Song(
				file: "ODD_RAS",
				root: "RADIO_12_REGGAE/odd_ras/",
				labels: [
					Label(
						artist: "CHRONIXX",
						title: "Odd Ras",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//PSYCHO
			Song(
				file: "PSYCHO",
				root: "RADIO_12_REGGAE/psycho/",
				labels: [
					Label(
						artist: "TOMMY LEE SPARTA",
						title: "Psycho",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//ROAST_FISH_AND_CORNBREAD
			Song(
				file: "ROAST_FISH_AND_CORNBREAD",
				root: "RADIO_12_REGGAE/roast_fish_and_cornbread/",
				labels: [
					Label(
						artist: "LEE \"SCRATCH\" PERRY",
						title: "Roast Fish & Cornbread",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SONS_OF_SLAVES
			Song(
				file: "SONS_OF_SLAVES",
				root: "RADIO_12_REGGAE/sons_of_slaves/",
				labels: [
					Label(
						artist: "JUNIOR DELGADO",
						title: "Sons Of Slaves",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SONS_OF_SLAVES_01",
						delay: 5.0
					),
					Intro(
						file: "SONS_OF_SLAVES_02",
						delay: 5.0
					)
				]
			),
			//TOPIC_OF_THE_DAY
			Song(
				file: "TOPIC_OF_THE_DAY",
				root: "RADIO_12_REGGAE/topic_of_the_day/",
				labels: [
					Label(
						artist: "I-OCTANE",
						title: "Topic Of The Day",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//WE_NEVER_FEAR_DEM
			Song(
				file: "WE_NEVER_FEAR_DEM",
				root: "RADIO_12_REGGAE/we_never_fear_dem/",
				labels: [
					Label(
						artist: "VYBZ KARTEL FEAT. POPCAAN",
						title: "We Never Fear Dem",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		time: [
			"EVENING": ["01","02","03"],
			"MORNING": ["01","02","03","04","05"]
		],
		to: [
			"AD": ["01","02","03","04","05"],
			"NEWS": ["01","02","03","04"]
		]
	),
	
	// MARK: Worldwide FM
	RadioStation(
		index: 6,
		number: 13,
		name: "Worldwide FM",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 1,
			column: 4
		),
		randomize: false,
		rotate: true,
		root: "RADIO_13_JAZZ",
		songs: [
			//wwfm_p1
			Song(
				file: "0x04A02233",
				root: "RADIO_13_JAZZ/wwfm_p1/",
				labels: [
					//Mirror Maru
					Label(
						artist: "CASHMERE CAT",
						title: "Mirror Maru",
						time: 0.0
					),
					//Cold Air
					Label(
						artist: "THE HICS",
						title: "Cold Air",
						time: 161.0
					),
					//The Place
					Label(
						artist: "INC.",
						title: "The Place",
						time: 306.0
					),
					//Beginning
					Label(
						artist: "TRICKSKI",
						title: "Beginning",
						time: 519.0
					),
					//Ghost
					Label(
						artist: "MALA",
						title: "Ghost",
						time: 784.0
					),
					//Forest Funk
					Label(
						artist: "SWINDLE",
						title: "Forest Funk",
						time: 990.0
					),
					//Throw Down
					Label(
						artist: "TOM BROWNE",
						title: "Throw Down",
						time: 1155.0
					),
					//You And The Music
					Label(
						artist: "DONALD BYRD",
						title: "You And The Music",
						time: 1323.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p2
			Song(
				file: "0x1EDECB2F",
				root: "RADIO_13_JAZZ/wwfm_p2/",
				labels: [
					//Thousand Finger Man
					Label(
						artist: "CANDIDO",
						title: "Thousand Finger Man",
						time: 0.0
					),
					//Harm In Charge
					Label(
						artist: "TORO Y MOI",
						title: "Harm In Charge",
						time: 215.0
					),
					//Breaking
					Label(
						artist: "KYODAI",
						title: "Breaking",
						time: 345.0
					),
					//Waveforms
					Label(
						artist: "DJANGO DJANGO",
						title: "Waveforms",
						time: 559.0
					),
					//Nissim
					Label(
						artist: "THE GASLAMP KILLER",
						title: "Nissim",
						time: 731.0
					),
					//Harpoon Land
					Label(
						artist: "OWINY SIGOMA BAND",
						title: "Harpoon Land",
						time: 965.0
					),
					//Brand New Revolution
					Label(
						artist: "GUTS",
						title: "Brand New Revolution",
						time: 1135.0
					),
					//Live Your Live (Melo-X Motherland God Mix)
					Label(
						artist: "YUNA",
						title: "Live Your Live (Melo-X Motherland God Mix)",
						time: 1318.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p3
			Song(
				file: "0x15ED4708",
				root: "RADIO_13_JAZZ/wwfm_p3/",
				labels: [
					//Lovery (Slow Cuban Vibe Mix)
					Label(
						artist: "KIKO NAVARRO & TUCCILLO FEAT. AMOR",
						title: "Lovery (Slow Cuban Vibe Mix)",
						time: 0.0
					),
					//1759 (Outro)
					Label(
						artist: "RICHARD SPAVEN",
						title: "1759 (Outro)",
						time: 280.0
					),
					//Forgotten Notes
					Label(
						artist: "HACKMAN",
						title: "Forgotten Notes",
						time: 3606.0 - 3086.0
					),
					//Shark Week
					Label(
						artist: "SINKANE",
						title: "Shark Week",
						time: 520.0
					),
					//Body & Soul
					Label(
						artist: "WILLIAM ONYEABOR",
						title: "Body & Soul",
						time: 924.0
					),
					//Kool FM
					Label(
						artist: "FOUR TET",
						title: "Kool FM",
						time: 1099.0
					),
					//Made To Stray
					Label(
						artist: "MOUNT KIMBIE",
						title: "Made To Stray",
						time: 1253.0
					),
					//World In A Room
					Label(
						artist: "ANUSHKA",
						title: "World In A Room",
						time: 1460.0
					),
					//Why You Wanna See My Bad Side?
					Label(
						artist: "SMOKEY ROBINSON",
						title: "Why You Wanna See My Bad Side?",
						time: 1619.0
					),
					//Street Life
					Label(
						artist: "RANDY CRAWFORD",
						title: "Street Life",
						time: 1831.0
					),
					//What You Need
					Label(
						artist: "FLUME",
						title: "What You Need",
						time: 2110.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p4
			Song(
				file: "0x1E4AFD9D",
				root: "RADIO_13_JAZZ/wwfm_p4/",
				labels: [
					//What You Need
					Label(
						artist: "FLUME",
						title: "What You Need",
						time: 0.0
					),
					//Hive
					Label(
						artist: "EARL SWEATSHIRT FT. VINCE STAPLES & CASEY VEGGIES",
						title: "Hive",
						time: 186.0
					),
					//Numb
					Label(
						artist: "PORTISHEAD",
						title: "Numb",
						time: 470.0
					),
					//Black Magic
					Label(
						artist: "JON WAYNE ",
						title: "Black Magic",
						time: 647.0
					),
					//I69
					Label(
						artist: "ROMAN GIANARTHUR",
						title: "I69",
						time: 752.0
					),
					//Treat Me Like Fire
					Label(
						artist: "LION BABE",
						title: "Treat Me Like Fire",
						time: 904.0
					),
					//Killdat
					Label(
						artist: "DAM-FUNK",
						title: "Killdat",
						time: 1013.0
					),
					//Run Away
					Label(
						artist: "JAMIE LIDELL",
						title: "Run Away",
						time: 1111.0
					),
					//Recover (CID RIM REMIX)
					Label(
						artist: "CHVRCHES",
						title: "Recover (CID RIM REMIX)",
						time: 1297.0
					),
					//Let Yrself Be
					Label(
						artist: "JIMMY EDGAR",
						title: "Let Yrself Be",
						time: 1459.0
					),
					//Viarejo
					Label(
						artist: "CLAP! CLAP!",
						title: "Viarejo",
						time: 1641.0
					),
					//No Balanço Da Canoa
					Label(
						artist: "MAGA BO",
						title: "No Balanço Da Canoa",
						time: 1772.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p1
			Song(
				file: "0x120DAFC1",
				root: "RADIO_13_JAZZ/wwfm_p1/",
				labels: [
					//Mirror Maru
					Label(
						artist: "CASHMERE CAT",
						title: "Mirror Maru",
						time: 0.0
					),
					//Cold Air
					Label(
						artist: "THE HICS",
						title: "Cold Air",
						time: 161.0
					),
					//The Place
					Label(
						artist: "INC.",
						title: "The Place",
						time: 306.0
					),
					//Beginning
					Label(
						artist: "TRICKSKI",
						title: "Beginning",
						time: 519.0
					),
					//Ghost
					Label(
						artist: "MALA",
						title: "Ghost",
						time: 784.0
					),
					//Forest Funk
					Label(
						artist: "SWINDLE",
						title: "Forest Funk",
						time: 990.0
					),
					//Throw Down
					Label(
						artist: "TOM BROWNE",
						title: "Throw Down",
						time: 1155.0
					),
					//You And The Music
					Label(
						artist: "DONALD BYRD",
						title: "You And The Music",
						time: 1323.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p2
			Song(
				file: "0x117A33D2",
				root: "RADIO_13_JAZZ/wwfm_p2/",
				labels: [
					//Thousand Finger Man
					Label(
						artist: "CANDIDO",
						title: "Thousand Finger Man",
						time: 0.0
					),
					//Harm In Charge
					Label(
						artist: "TORO Y MOI",
						title: "Harm In Charge",
						time: 215.0
					),
					//Breaking
					Label(
						artist: "KYODAI",
						title: "Breaking",
						time: 345.0
					),
					//Waveforms
					Label(
						artist: "DJANGO DJANGO",
						title: "Waveforms",
						time: 559.0
					),
					//Nissim
					Label(
						artist: "THE GASLAMP KILLER",
						title: "Nissim",
						time: 731.0
					),
					//Harpoon Land
					Label(
						artist: "OWINY SIGOMA BAND",
						title: "Harpoon Land",
						time: 965.0
					),
					//Brand New Revolution
					Label(
						artist: "GUTS",
						title: "Brand New Revolution",
						time: 1135.0
					),
					//Live Your Live (Melo-X Motherland God Mix)
					Label(
						artist: "YUNA",
						title: "Live Your Live (Melo-X Motherland God Mix)",
						time: 1318.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p3
			Song(
				file: "0x032BC446",
				root: "RADIO_13_JAZZ/wwfm_p3/",
				labels: [
					//Lovery (Slow Cuban Vibe Mix)
					Label(
						artist: "KIKO NAVARRO & TUCCILLO FEAT. AMOR",
						title: "Lovery (Slow Cuban Vibe Mix)",
						time: 0.0
					),
					//1759 (Outro)
					Label(
						artist: "RICHARD SPAVEN",
						title: "1759 (Outro)",
						time: 280.0
					),
					//Forgotten Notes
					Label(
						artist: "HACKMAN",
						title: "Forgotten Notes",
						time: 3606.0 - 3086.0
					),
					//Shark Week
					Label(
						artist: "SINKANE",
						title: "Shark Week",
						time: 520.0
					),
					//Body & Soul
					Label(
						artist: "WILLIAM ONYEABOR",
						title: "Body & Soul",
						time: 924.0
					),
					//Kool FM
					Label(
						artist: "FOUR TET",
						title: "Kool FM",
						time: 1099.0
					),
					//Made To Stray
					Label(
						artist: "MOUNT KIMBIE",
						title: "Made To Stray",
						time: 1253.0
					),
					//World In A Room
					Label(
						artist: "ANUSHKA",
						title: "World In A Room",
						time: 1460.0
					),
					//Why You Wanna See My Bad Side?
					Label(
						artist: "SMOKEY ROBINSON",
						title: "Why You Wanna See My Bad Side?",
						time: 1619.0
					),
					//Street Life
					Label(
						artist: "RANDY CRAWFORD",
						title: "Street Life",
						time: 1831.0
					),
					//What You Need
					Label(
						artist: "FLUME",
						title: "What You Need",
						time: 2110.0
					)
				],
				set: nil,
				intros: []
			),
			//wwfm_p4
			Song(
				file: "0x1E66F1A0",
				root: "RADIO_13_JAZZ/wwfm_p4/",
				labels: [
					//What You Need
					Label(
						artist: "FLUME",
						title: "What You Need",
						time: 0.0
					),
					//Hive
					Label(
						artist: "EARL SWEATSHIRT FT. VINCE STAPLES & CASEY VEGGIES",
						title: "Hive",
						time: 186.0
					),
					//Numb
					Label(
						artist: "PORTISHEAD",
						title: "Numb",
						time: 470.0
					),
					//Black Magic
					Label(
						artist: "JON WAYNE ",
						title: "Black Magic",
						time: 647.0
					),
					//I69
					Label(
						artist: "ROMAN GIANARTHUR",
						title: "I69",
						time: 752.0
					),
					//Treat Me Like Fire
					Label(
						artist: "LION BABE",
						title: "Treat Me Like Fire",
						time: 904.0
					),
					//Killdat
					Label(
						artist: "DAM-FUNK",
						title: "Killdat",
						time: 1013.0
					),
					//Run Away
					Label(
						artist: "JAMIE LIDELL",
						title: "Run Away",
						time: 1111.0
					),
					//Recover (CID RIM REMIX)
					Label(
						artist: "CHVRCHES",
						title: "Recover (CID RIM REMIX)",
						time: 1297.0
					),
					//Let Yrself Be
					Label(
						artist: "JIMMY EDGAR",
						title: "Let Yrself Be",
						time: 1459.0
					),
					//Viarejo
					Label(
						artist: "CLAP! CLAP!",
						title: "Viarejo",
						time: 1641.0
					),
					//No Balanço Da Canoa
					Label(
						artist: "MAGA BO",
						title: "No Balanço Da Canoa",
						time: 1772.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: FlyLo FM
	RadioStation(
		index: 7,
		number: 14,
		name: "FlyLo FM",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 2,
			column: 4
		),
		randomize: false,
		rotate: true,
		root: "RADIO_14_DANCE_02",
		songs: [
			Song(
				file: "0x0A818E80",
				root: "RADIO_14_DANCE_02/flylo_part1/",
				labels: [
					//Getting There
					Label(
						artist: "FLYING LOTUS FEAT. NIKI RANDA",
						title: "Getting There",
						time: 0.0
					),
					//Crystals
					Label(
						artist: "CLAMS CASINO",
						title: "Crystals",
						time: 142.0
					),
					//Crosswerved
					Label(
						artist: "FLYING LOTUS",
						title: "Crosswerved",
						time: 219.0
					),
					//Be Spin
					Label(
						artist: "FLYING LOTUS",
						title: "Be Spin",
						time: 259.0
					),
					//See Thru To U (ft Erykah Badu)
					Label(
						artist: "FLYING LOTUS",
						title: "See Thru To U (ft Erykah Badu)",
						time: 358.0
					),
					//The Diddler
					Label(
						artist: "FLYING LOTUS",
						title: "The Diddler",
						time: 407.0
					),
					//Computer Face RMX
					Label(
						artist: "FLYING LOTUS",
						title: "Computer Face RMX",
						time: 476.0
					),
					//100hm
					Label(
						artist: "HUDSON MOHAWKE",
						title: "100hm",
						time: 566.0
					),
					//The Kill
					Label(
						artist: "FLYING LOTUS FEAT. NIKI RANDA",
						title: "The Kill",
						time: 637.0
					),
					//Garbage
					Label(
						artist: "TYLER, THE CREATOR",
						title: "Garbage",
						time: 835.0
					),
					//Elevators (Me & You)
					Label(
						artist: "OUTKAST",
						title: "Elevators (Me & You)",
						time: 1026.0
					),
					//Evil Grin
					Label(
						artist: "CAPTAIN MURPHY",
						title: "Evil Grin",
						time: 1178.0
					),
					//Catapult Man
					Label(
						artist: "FLYING LOTUS",
						title: "Catapult Man",
						time: 1289.0
					),
					//Encoded Flow
					Label(
						artist: "DABRYE",
						title: "Encoded Flow",
						time: 1395.0
					),
					//She Died There
					Label(
						artist: "MACHINEDRUM",
						title: "She Died There",
						time: 1472.0
					),
					//It's Wack
					Label(
						artist: "DJ RASHAD & HEAVEE",
						title: "It's Wack",
						time: 1608.0
					),
					//O Sheit It's X
					Label(
						artist: "THUNDERCAT",
						title: "O Sheit It's X",
						time: 1784.0
					),
					//Stonecutters
					Label(
						artist: "FLYING LOTUS",
						title: "Stonecutters",
						time: 1948.0
					),
					//23
					Label(
						artist: "SHADOW CHILD",
						title: "23",
						time: 2077.0
					),
					//Stalker Ha
					Label(
						artist: "KINGDOM",
						title: "Stalker Ha",
						time: 2245.0
					),
					//Windowlicker
					Label(
						artist: "APHEX TWIN",
						title: "Windowlicker",
						time: 2339.0
					),
					//Eddie You Should Know Better
					Label(
						artist: "CURTIS MAYFIELD",
						title: "Eddie You Should Know Better",
						time: 2475.0
					)
				],
				set: nil,
				intros: []
			),
			Song(
				file: "0x0339EC32",
				root: "RADIO_14_DANCE_02/flylo_part2/",
				labels: [
					//You Never Come Closer
					Label(
						artist: "DORIS",
						title: "You Never Come Closer",
						time: 0.0
					),
					//Medication Medication
					Label(
						artist: "FLYING LOTUS FT. KRAYZIE BONE",
						title: "Medication Medication",
						time: 265.0
					),
					//What We Want
					Label(
						artist: "XXYYXX",
						title: "What We Want",
						time: 404.0
					),
					//Make Money
					Label(
						artist: "LAPALUX",
						title: "Make Money",
						time: 570.0
					),
					//Shred You To Bits
					Label(
						artist: "GASLAMP KILLER",
						title: "Shred You To Bits",
						time: 659.0
					),
					//B Adams
					Label(
						artist: "MONO/POLY AND THUNDERCAT",
						title: "B Adams",
						time: 752.0
					),
					//Osaka Trade
					Label(
						artist: "FLYING LOTUS",
						title: "Osaka Trade",
						time: 839.0
					),
					//Masquatch
					Label(
						artist: "DOOM",
						title: "Masquatch",
						time: 973.0
					),
					//Early Mountain
					Label(
						artist: "FLYING LOTUS",
						title: "Early Mountain",
						time: 1084.0
					),
					//Into Vogon Skulls
					Label(
						artist: "DIMLITE",
						title: "Into Vogon Skulls",
						time: 1201.0
					),
					//F--- The Makeup, Skip The Shower
					Label(
						artist: "KNOWER",
						title: "F--- The Makeup, Skip The Shower",
						time: 1344.0
					),
					//4AM/AraabMuzik Streetz Tonight Remix
					Label(
						artist: "KASKADE",
						title: "4AM/AraabMuzik Streetz Tonight Remix",
						time: 1478.0
					)
				],
				set: nil,
				intros: []
			),
			Song(
				file: "0x17E2800E",
				root: "RADIO_14_DANCE_02/flylo_part1/",
				labels: [
					//Getting There
					Label(
						artist: "FLYING LOTUS FEAT. NIKI RANDA",
						title: "Getting There",
						time: 0.0
					),
					//Crystals
					Label(
						artist: "CLAMS CASINO",
						title: "Crystals",
						time: 142.0
					),
					//Crosswerved
					Label(
						artist: "FLYING LOTUS",
						title: "Crosswerved",
						time: 219.0
					),
					//Be Spin
					Label(
						artist: "FLYING LOTUS",
						title: "Be Spin",
						time: 259.0
					),
					//See Thru To U (ft Erykah Badu)
					Label(
						artist: "FLYING LOTUS",
						title: "See Thru To U (ft Erykah Badu)",
						time: 358.0
					),
					//The Diddler
					Label(
						artist: "FLYING LOTUS",
						title: "The Diddler",
						time: 407.0
					),
					//Computer Face RMX
					Label(
						artist: "FLYING LOTUS",
						title: "Computer Face RMX",
						time: 476.0
					),
					//100hm
					Label(
						artist: "HUDSON MOHAWKE",
						title: "100hm",
						time: 566.0
					),
					//The Kill
					Label(
						artist: "FLYING LOTUS FEAT. NIKI RANDA",
						title: "The Kill",
						time: 637.0
					),
					//Garbage
					Label(
						artist: "TYLER, THE CREATOR",
						title: "Garbage",
						time: 835.0
					),
					//Elevators (Me & You)
					Label(
						artist: "OUTKAST",
						title: "Elevators (Me & You)",
						time: 1026.0
					),
					//Evil Grin
					Label(
						artist: "CAPTAIN MURPHY",
						title: "Evil Grin",
						time: 1178.0
					),
					//Catapult Man
					Label(
						artist: "FLYING LOTUS",
						title: "Catapult Man",
						time: 1289.0
					),
					//Encoded Flow
					Label(
						artist: "DABRYE",
						title: "Encoded Flow",
						time: 1395.0
					),
					//She Died There
					Label(
						artist: "MACHINEDRUM",
						title: "She Died There",
						time: 1472.0
					),
					//It's Wack
					Label(
						artist: "DJ RASHAD & HEAVEE",
						title: "It's Wack",
						time: 1608.0
					),
					//O Sheit It's X
					Label(
						artist: "THUNDERCAT",
						title: "O Sheit It's X",
						time: 1784.0
					),
					//Stonecutters
					Label(
						artist: "FLYING LOTUS",
						title: "Stonecutters",
						time: 1948.0
					),
					//23
					Label(
						artist: "SHADOW CHILD",
						title: "23",
						time: 2077.0
					),
					//Stalker Ha
					Label(
						artist: "KINGDOM",
						title: "Stalker Ha",
						time: 2245.0
					),
					//Windowlicker
					Label(
						artist: "APHEX TWIN",
						title: "Windowlicker",
						time: 2339.0
					),
					//Eddie You Should Know Better
					Label(
						artist: "CURTIS MAYFIELD",
						title: "Eddie You Should Know Better",
						time: 2475.0
					)
				],
				set: nil,
				intros: []
			),
			Song(
				file: "0x08194D53",
				root: "RADIO_14_DANCE_02/flylo_part2/",
				labels: [
					//You Never Come Closer
					Label(
						artist: "DORIS",
						title: "You Never Come Closer",
						time: 0.0
					),
					//Medication Medication
					Label(
						artist: "FLYING LOTUS FT. KRAYZIE BONE",
						title: "Medication Medication",
						time: 265.0
					),
					//What We Want
					Label(
						artist: "XXYYXX",
						title: "What We Want",
						time: 404.0
					),
					//Make Money
					Label(
						artist: "LAPALUX",
						title: "Make Money",
						time: 570.0
					),
					//Shred You To Bits
					Label(
						artist: "GASLAMP KILLER",
						title: "Shred You To Bits",
						time: 659.0
					),
					//B Adams
					Label(
						artist: "MONO/POLY AND THUNDERCAT",
						title: "B Adams",
						time: 752.0
					),
					//Osaka Trade
					Label(
						artist: "FLYING LOTUS",
						title: "Osaka Trade",
						time: 839.0
					),
					//Masquatch
					Label(
						artist: "DOOM",
						title: "Masquatch",
						time: 973.0
					),
					//Early Mountain
					Label(
						artist: "FLYING LOTUS",
						title: "Early Mountain",
						time: 1084.0
					),
					//Into Vogon Skulls
					Label(
						artist: "DIMLITE",
						title: "Into Vogon Skulls",
						time: 1201.0
					),
					//F--- The Makeup, Skip The Shower
					Label(
						artist: "KNOWER",
						title: "F--- The Makeup, Skip The Shower",
						time: 1344.0
					),
					//4AM/AraabMuzik Streetz Tonight Remix
					Label(
						artist: "KASKADE",
						title: "4AM/AraabMuzik Streetz Tonight Remix",
						time: 1478.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: The Low Down 91.1
	RadioStation(
		index: 8,
		number: 15,
		name: "The Low Down 91.1",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 3,
			column: 4
		),
		randomize: true,
		rotate: false,
		root: "RADIO_15_MOTOWN",
		songs: [
			//ASHLEYS_ROACHCLIP
			Song(
				file: "ASHLEYS_ROACHCLIP",
				root: "RADIO_15_MOTOWN/ashleys_roachclip/",
				labels: [
					Label(
						artist: "THE SOUL SEARCHERS",
						title: "Ashley's Roachclip",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ASHLEYS_ROACHCLIP_01",
						delay: 5.0
					),
					Intro(
						file: "ASHLEYS_ROACHCLIP_02",
						delay: 5.0
					)
				]
			),
			//BOUNCY_LADY
			Song(
				file: "BOUNCY_LADY",
				root: "RADIO_15_MOTOWN/bouncy_lady/",
				labels: [
					Label(
						artist: "PLEASURE",
						title: "Bouncy Lady",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//CALIFORNIA_SOUL
			Song(
				file: "CALIFORNIA_SOUL",
				root: "RADIO_15_MOTOWN/california_soul/",
				labels: [
					Label(
						artist: "MARLENA SHAW",
						title: "California Soul",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CALIFORNIA_SOUL_01",
						delay: 5.0
					),
					Intro(
						file: "CALIFORNIA_SOUL_02",
						delay: 5.0
					)
				]
			),
			//CHANGIN
			Song(
				file: "CHANGIN",
				root: "RADIO_15_MOTOWN/changin/",
				labels: [
					Label(
						artist: "BRASS CONSTRUCTION",
						title: "Changin'",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//CLIMAX
			Song(
				file: "CLIMAX",
				root: "RADIO_15_MOTOWN/climax/",
				labels: [
					Label(
						artist: "OHIO PLAYERS",
						title: "Climax",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CLIMAX_01",
						delay: 5.0
					),
					Intro(
						file: "CLIMAX_02",
						delay: 5.0
					)
				]
			),
			//CRUISIN
			Song(
				file: "CRUISIN",
				root: "RADIO_15_MOTOWN/cruisin/",
				labels: [
					Label(
						artist: "SMOKEEY ROBINSON",
						title: "Crusin'",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CRUISIN_01",
						delay: 5.0
					),
					Intro(
						file: "CRUISIN_02",
						delay: 5.0
					)
				]
			),
			//DO_IT_TIL_YOURE_SATISFIED
			Song(
				file: "DO_IT_TIL_YOURE_SATISFIED",
				root: "RADIO_15_MOTOWN/do_it_til_youre_satisfied/",
				labels: [
					Label(
						artist: "BT EXPRESS",
						title: "Do It ('Til You're Satisfied)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DO_IT_TIL_YOURE_SATISFIED_01",
						delay: 5.0
					),
					Intro(
						file: "DO_IT_TIL_YOURE_SATISFIED_02",
						delay: 5.0
					)
				]
			),
			//FUNNY_FEELING
			Song(
				file: "FUNNY_FEELING",
				root: "RADIO_15_MOTOWN/funny_feeling/",
				labels: [
					Label(
						artist: "THE DELFONICS",
						title: "Funny Feeling",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FUNNY_FEELING_01",
						delay: 5.0
					)
				]
			),
			//HERCULES
			Song(
				file: "HERCULES",
				root: "RADIO_15_MOTOWN/hercules/",
				labels: [
					Label(
						artist: "AARON NEVILLE",
						title: "Hercules",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HERCULES_01",
						delay: 5.0
					),
					Intro(
						file: "HERCULES_02",
						delay: 5.0
					)
				]
			),
			//I_BELIEVE_IN_MIRACLES
			Song(
				file: "I_BELIEVE_IN_MIRACLES",
				root: "RADIO_15_MOTOWN/i_believe_in_miracles/",
				labels: [
					Label(
						artist: "JACKSON SISTERS",
						title: "I Believe In Miracles",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_BELIEVE_IN_MIRACLES_01",
						delay: 5.0
					),
					Intro(
						file: "I_BELIEVE_IN_MIRACLES_02",
						delay: 5.0
					)
				]
			),
			//I_GET_LIFTED
			Song(
				file: "I_GET_LIFTED",
				root: "RADIO_15_MOTOWN/i_get_lifted/",
				labels: [
					Label(
						artist: "GEORGE MACCRAE",
						title: "I Get Lifted",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_GET_LIFTED_01",
						delay: 5.0
					),
					Intro(
						file: "I_GET_LIFTED_02",
						delay: 5.0
					)
				]
			),
			//MAGIC_MOUNTAIN
			Song(
				file: "MAGIC_MOUNTAIN",
				root: "RADIO_15_MOTOWN/magic_mountain/",
				labels: [
					Label(
						artist: "WAR",
						title: "Magic Mountain",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MAGIC_MOUNTAIN_01",
						delay: 5.0
					),
					Intro(
						file: "MAGIC_MOUNTAIN_02",
						delay: 5.0
					)
				]
			),
			//O_O_H_CHILD
			Song(
				file: "O_O_H_CHILD",
				root: "RADIO_15_MOTOWN/o_o_h_child/",
				labels: [
					Label(
						artist: "THE FIVE STAIRSTEPS",
						title: "O-O-H Child",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "O_O_H_CHILD_01",
						delay: 5.0
					),
					Intro(
						file: "O_O_H_CHILD_02",
						delay: 5.0
					)
				]
			),
			//READY_OR_NOT
			Song(
				file: "READY_OR_NOT",
				root: "RADIO_15_MOTOWN/ready_or_not/",
				labels: [
					Label(
						artist: "THE DELFONICS",
						title: "Ready Or Not Here I Come (Can't Hide From Love)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "READY_OR_NOT_01",
						delay: 5.0
					),
					Intro(
						file: "READY_OR_NOT_02",
						delay: 5.0
					)
				]
			),
			//RUBBER_BAND
			Song(
				file: "RUBBER_BAND",
				root: "RADIO_15_MOTOWN/rubber_band/",
				labels: [
					Label(
						artist: "THE TRAMMPS",
						title: "Rubber Band",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "RUBBER_BAND_01",
						delay: 5.0
					),
					Intro(
						file: "RUBBER_BAND_02",
						delay: 5.0
					)
				]
			),
			//SMILING_FACES
			Song(
				file: "SMILING_FACES",
				root: "RADIO_15_MOTOWN/smiling_faces/",
				labels: [
					Label(
						artist: "THE UNDISPUTED TRUTH",
						title: "Smiling Faces Sometimes",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SMILING_FACES_01",
						delay: 5.0
					),
					Intro(
						file: "SMILING_FACES_02",
						delay: 5.0
					)
				]
			),
			//STORIES
			Song(
				file: "STORIES",
				root: "RADIO_15_MOTOWN/stories/",
				labels: [
					Label(
						artist: "THE CHAKACHAS",
						title: "Stories",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SUPERMAN_LOVER
			Song(
				file: "SUPERMAN_LOVER",
				root: "RADIO_15_MOTOWN/superman_lover/",
				labels: [
					Label(
						artist: "JOHNNY \"GUITAR\" WATSON",
						title: "Superman Lover",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SUPERMAN_LOVER_01",
						delay: 5.0
					),
					Intro(
						file: "SUPERMAN_LOVER_02",
						delay: 5.0
					)
				]
			),
			//THE_CISCO_KID
			Song(
				file: "THE_CISCO_KID",
				root: "RADIO_15_MOTOWN/the_cisco_kid/",
				labels: [
					Label(
						artist: "WAR",
						title: "The Cisco Kid",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_CISCO_KID_01",
						delay: 5.0
					),
					Intro(
						file: "THE_CISCO_KID_02",
						delay: 5.0
					),
					Intro(
						file: "THE_CISCO_KID_03",
						delay: 5.0
					)
				]
			),
			//VIVA_TIRADO
			Song(
				file: "VIVA_TIRADO",
				root: "RADIO_15_MOTOWN/viva_tirado/",
				labels: [
					Label(
						artist: "EL CHICANO",
						title: "Viva Tirado - Part 1",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "VIVA_TIRADO_01",
						delay: 5.0
					),
					Intro(
						file: "VIVA_TIRADO_02",
						delay: 5.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12"],
		time: [
			"EVENING": ["01","02","03","04","05"],
			"MORNING": ["01","02","03","04","05","06"]
		],
		to: [
			"AD": ["01","02","03","04","05"],
			"NEWS": []
		]
	),
	
	// MARK: The Lab
	RadioStation(
		index: 9,
		number: 19, /*16*/
		name: "The Lab",
		image: "gta_radio_stations_texture04_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: true,
		root: "DLC_THELAB",
		songs: [
			//LAB_P1
			Song(
				file: "LAB_P1",
				root: "DLC_THELAB/lab_p1/",
				labels: [
					Label(
						artist: "",
						title: "",
						time: 0.0
					),
					//Play It Cool
					Label(
						artist: "GANGRENE FEAT. SAMUEL T. HERRING & EARL SWEATSHIRT",
						title: "Play It Cool",
						time: 7.0
					),
					Label(
						artist: "",
						title: "",
						time: 223.0
					),
					//Trouble
					Label(
						artist: "AB SOUL FEAT. ALOE BLACC",
						title: "Trouble",
						time: 267.0
					),
					Label(
						artist: "",
						title: "",
						time: 471.0
					),
					//Speedline Miracle Masterpiece
					Label(
						artist: "TUNDE ADEBIMPE FEAT. SAL P & SINKANE",
						title: "Speedline Miracle Masterpiece",
						time: 511.0
					),
					Label(
						artist: "",
						title: "",
						time: 758.0
					),
					//Welcome To Los Santos
					Label(
						artist: "MC EIHT & FREDDIE GIBBS FEAT. KOKANE",
						title: "Welcome To Los Santos",
						time: 786.0
					),
					Label(
						artist: "",
						title: "",
						time: 1010.0
					),
					//K.Y.S.A.
					Label(
						artist: "PHANTOGRAM",
						title: "K.Y.S.A.",
						time: 1043.0
					),
					Label(
						artist: "",
						title: "",
						time: 1300.0
					),
					//Fast Life
					Label(
						artist: "VYBZ KARTEL",
						title: "Fast Life",
						time: 1385.0
					),
					Label(
						artist: "",
						title: "",
						time: 1591.0
					),
					//20's 50's 100's
					Label(
						artist: "KING AVRIEL FEAT. A$AP FERG",
						title: "20's 50's 100's",
						time: 1620.0
					),
					Label(
						artist: "",
						title: "",
						time: 1878.0
					),
					//Lock & Load
					Label(
						artist: "MNDR FEAT. KILLER MIKE",
						title: "Lock & Load",
						time: 1950.0
					)
				],
				set: nil,
				intros: []
			),
			//LAB_P2
			Song(
				file: "LAB_P2",
				root: "DLC_THELAB/lab_p2/",
				labels: [
					Label(
						artist: "",
						title: "",
						time: 0.0
					),
					//Born Bad
					Label(
						artist: "POPCAAN FEAT. FREDDIE GIBBS",
						title: "Born Bad",
						time: 45.0
					),
					Label(
						artist: "",
						title: "",
						time: 251.0
					),
					//California
					Label(
						artist: "E-40 FEAT. DAM FUNK & ARIEL PINK",
						title: "California",
						time: 286.0
					),
					Label(
						artist: "",
						title: "",
						time: 515.0
					),
					//Leave
					Label(
						artist: "WAVVES",
						title: "Leave",
						time: 518.0
					),
					Label(
						artist: "",
						title: "",
						time: 700.0
					),
					//Fetti
					Label(
						artist: "CURREN$Y & FREDDIE GIBBS",
						title: "Fetti",
						time: 715.0
					),
					Label(
						artist: "",
						title: "",
						time: 971.0
					),
					//Wanderer
					Label(
						artist: "LITTLE DRAGON",
						title: "Wanderer",
						time: 1022.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: Radio Mirror Park
	RadioStation(
		index: 10,
		number: 16, /*17*/
		name: "Radio Mirror Park",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 4,
			column: 2
		),
		randomize: true,
		rotate: false,
		root: "RADIO_16_SILVERLAKE",
		songs: [
			//ALWAYS
			Song(
				file: "ALWAYS",
				root: "RADIO_16_SILVERLAKE/always/",
				labels: [
					Label(
						artist: "PANAMA",
						title: "Always",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ALWAYS_01",
						delay: 8.0
					),
					Intro(
						file: "ALWAYS_02",
						delay: 8.0
					)
				]
			),
			//BOOGIE_IN_ZERO_GRAVITY
			Song(
				file: "BOOGIE_IN_ZERO_GRAVITY",
				root: "RADIO_16_SILVERLAKE/boogie_in_zero_gravity/",
				labels: [
					Label(
						artist: "BLACK STROBE",
						title: "Boogie In Zero Gravity",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BOOGIE_IN_ZERO_GRAVITY_01",
						delay: 8.0
					),
					Intro(
						file: "BOOGIE_IN_ZERO_GRAVITY_02",
						delay: 8.0
					)
				]
			),
			//CHANGE_OF_COAST
			Song(
				file: "CHANGE_OF_COAST",
				root: "RADIO_16_SILVERLAKE/change_of_coast/",
				labels: [
					Label(
						artist: "NEON INDIAN",
						title: "Change Of Coast",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//COLOURS
			Song(
				file: "COLOURS",
				root: "RADIO_16_SILVERLAKE/colours/",
				labels: [
					Label(
						artist: "AGE OF CONSENT",
						title: "Colours",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//CRYSTALFILM
			Song(
				file: "CRYSTALFILM",
				root: "RADIO_16_SILVERLAKE/crystalfilm/",
				labels: [
					Label(
						artist: "LITTLE DRAGON",
						title: "Crystalfilm",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CRYSTALFILM_01",
						delay: 8.0
					),
					Intro(
						file: "CRYSTALFILM_02",
						delay: 8.0
					)
				]
			),
			//DARK_MATTER
			Song(
				file: "DARK_MATTER",
				root: "RADIO_16_SILVERLAKE/dark_matter/",
				labels: [
					Label(
						artist: "FEATHERS",
						title: "Dark Matter",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DARK_MATTER_01",
						delay: 8.0
					),
					Intro(
						file: "DARK_MATTER_02",
						delay: 8.0
					)
				]
			),
			//DO_YOU_BELIEVE
			Song(
				file: "DO_YOU_BELIEVE",
				root: "RADIO_16_SILVERLAKE/do_you_believe/",
				labels: [
					Label(
						artist: "POOLSIDE",
						title: "Do You Believe",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DO_YOU_BELIEVE_01",
						delay: 8.0
					),
					Intro(
						file: "DO_YOU_BELIEVE_02",
						delay: 8.0
					)
				]
			),
			//DONT_COME_CLOSE
			Song(
				file: "DONT_COME_CLOSE",
				root: "RADIO_16_SILVERLAKE/dont_come_close/",
				labels: [
					Label(
						artist: "YEASAYER",
						title: "Don't Come Close",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DONT_COME_CLOSE_01",
						delay: 8.0
					),
					Intro(
						file: "DONT_COME_CLOSE_02",
						delay: 8.0
					),
					Intro(
						file: "DONT_COME_CLOSE_03",
						delay: 8.0
					),
					Intro(
						file: "DONT_COME_CLOSE_04",
						delay: 8.0
					)
				]
			),
			//FEEL_THE_SAME
			Song(
				file: "FEEL_THE_SAME",
				root: "RADIO_16_SILVERLAKE/feel_the_same/",
				labels: [
					Label(
						artist: "BATTLE TAPES",
						title: "Feel The Same",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FEEL_THE_SAME_01",
						delay: 8.0
					),
					Intro(
						file: "FEEL_THE_SAME_02",
						delay: 8.0
					)
				]
			),
			//FLUTES
			Song(
				file: "FLUTES",
				root: "RADIO_16_SILVERLAKE/flutes/",
				labels: [
					Label(
						artist: "HOT CHIP",
						title: "Flutes",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//FORGET
			Song(
				file: "FORGET",
				root: "RADIO_16_SILVERLAKE/forget/",
				labels: [
					Label(
						artist: "TWIN SHADOW",
						title: "Forget",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FORGET_01",
						delay: 8.0
					),
					Intro(
						file: "FORGET_02",
						delay: 8.0
					)
				]
			),
			//FROM_NOWHERE
			Song(
				file: "FROM_NOWHERE",
				root: "RADIO_16_SILVERLAKE/from_nowhere/",
				labels: [
					Label(
						artist: "DAN CROLL",
						title: "From Nowhere (Baardson Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FROM_NOWHERE_01",
						delay: 8.0
					),
					Intro(
						file: "FROM_NOWHERE_02",
						delay: 8.0
					)
				]
			),
			//HEART_IN_THE_PIPES
			Song(
				file: "HEART_IN_THE_PIPES",
				root: "RADIO_16_SILVERLAKE/heart_in_the_pipes/",
				labels: [
					Label(
						artist: "TONY CASTLES",
						title: "Heart In The Pipes (KAUF Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HEART_IN_THE_PIPES_01",
						delay: 8.0
					),
					Intro(
						file: "HEART_IN_THE_PIPES_02",
						delay: 8.0
					)
				]
			),
			//HEARTBREAK
			Song(
				file: "HEARTBREAK",
				root: "RADIO_16_SILVERLAKE/heartbreak/",
				labels: [
					Label(
						artist: "AGE OF CONSENT",
						title: "Heartbreak",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//HIGH_PRESSURE
			Song(
				file: "HIGH_PRESSURE",
				root: "RADIO_16_SILVERLAKE/high_pressure/",
				labels: [
					Label(
						artist: "HEALTH",
						title: "High Pressure Dave",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//HOLD_ON_HOLY_GHOST
			Song(
				file: "HOLD_ON_HOLY_GHOST",
				root: "RADIO_16_SILVERLAKE/hold_on_holy_ghost/",
				labels: [
					Label(
						artist: "HOLLY GHOST!",
						title: "Hold On",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HOLD_ON_HOLY_GHOST_01",
						delay: 8.0
					),
					Intro(
						file: "HOLD_ON_HOLY_GHOST_02",
						delay: 8.0
					)
				]
			),
			//IN_REAL_LIFE
			Song(
				file: "IN_REAL_LIFE",
				root: "RADIO_16_SILVERLAKE/in_real_life/",
				labels: [
					Label(
						artist: "THE RUBY SUNS",
						title: "In Real Life",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IN_REAL_LIFE_01",
						delay: 8.0
					),
					Intro(
						file: "IN_REAL_LIFE_02",
						delay: 8.0
					)
				]
			),
			//JASMINE
			Song(
				file: "JASMINE",
				root: "RADIO_16_SILVERLAKE/jasmine/",
				labels: [
					Label(
						artist: "JAI PAUL",
						title: "Jasmine",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "JASMINE_01",
						delay: 8.0
					),
					Intro(
						file: "JASMINE_02",
						delay: 8.0
					)
				]
			),
			//LITTLE_WHITE_LIE
			Song(
				file: "LITTLE_WHITE_LIE",
				root: "RADIO_16_SILVERLAKE/little_white_lie/",
				labels: [
					Label(
						artist: "LIVING DAYS",
						title: "Little White Lie",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LITTLE_WHITE_LIE_01",
						delay: 8.0
					),
					Intro(
						file: "LITTLE_WHITE_LIE_02",
						delay: 8.0
					)
				]
			),
			//LIVING_IN_AMERICA
			Song(
				file: "LIVING_IN_AMERICA",
				root: "RADIO_16_SILVERLAKE/living_in_america/",
				labels: [
					Label(
						artist: "DOM",
						title: "Living In America",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LIVING_IN_AMERICA_01",
						delay: 8.0
					),
					Intro(
						file: "LIVING_IN_AMERICA_02",
						delay: 8.0
					)
				]
			),
			//LUCKY_BOY
			Song(
				file: "LUCKY_BOY",
				root: "RADIO_16_SILVERLAKE/lucky_boy/",
				labels: [
					Label(
						artist: "DJ MEHDI",
						title: "Lucky Boy (Outlines Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LUCKY_BOY_01",
						delay: 8.0
					),
					Intro(
						file: "LUCKY_BOY_02",
						delay: 8.0
					)
				]
			),
			//MESMERIZED
			Song(
				file: "MESMERIZED",
				root: "RADIO_16_SILVERLAKE/mesmerized/",
				labels: [
					Label(
						artist: "SCENIC",
						title: "Mesmerised",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//NEW_BEAT
			Song(
				file: "NEW_BEAT",
				root: "RADIO_16_SILVERLAKE/new_beat/",
				labels: [
					Label(
						artist: "TORO Y MOI",
						title: "New Beat",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NEW_BEAT_01",
						delay: 8.0
					),
					Intro(
						file: "NEW_BEAT_02",
						delay: 8.0
					)
				]
			),
			//NOWHERE_TO_GO
			Song(
				file: "NOWHERE_TO_GO",
				root: "RADIO_16_SILVERLAKE/nowhere_to_go/",
				labels: [
					Label(
						artist: "NITE JEWEL",
						title: "Nowhere To Go",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NOWHERE_TO_GO_01",
						delay: 8.0
					),
					Intro(
						file: "NOWHERE_TO_GO_02",
						delay: 8.0
					)
				]
			),
			//O_N_E
			Song(
				file: "O_N_E",
				root: "RADIO_16_SILVERLAKE/o_n_e/",
				labels: [
					Label(
						artist: "YEASAYER",
						title: "O.N.E.",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//OLD_LOVE
			Song(
				file: "OLD_LOVE",
				root: "RADIO_16_SILVERLAKE/old_love/",
				labels: [
					Label(
						artist: "TWIN SHADOW",
						title: "Old Love, New Love",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "OLD_LOVE_01",
						delay: 8.0
					)
				]
			),
			//ONE_GIRL_ONE_BOY
			Song(
				file: "ONE_GIRL_ONE_BOY",
				root: "RADIO_16_SILVERLAKE/one_girl_one_boy/",
				labels: [
					Label(
						artist: "!!!",
						title: "One Girl/One Boy",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ONE_GIRL_ONE_BOY_01",
						delay: 8.0
					),
					Intro(
						file: "ONE_GIRL_ONE_BOY_02",
						delay: 8.0
					)
				]
			),
			//PHARAOHS
			Song(
				file: "PHARAOHS",
				root: "RADIO_16_SILVERLAKE/pharaohs/",
				labels: [
					Label(
						artist: "SBTRKT",
						title: "Pharaohs feat Roses Gabor",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "PHARAOHS_01",
						delay: 8.0
					),
					Intro(
						file: "PHARAOHS_02",
						delay: 8.0
					)
				]
			),
			//POLISH_GIRL
			Song(
				file: "POLISH_GIRL",
				root: "RADIO_16_SILVERLAKE/polish_girl/",
				labels: [
					Label(
						artist: "NEON INDIAN",
						title: "Polish Girl",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "POLISH_GIRL_01",
						delay: 8.0
					),
					Intro(
						file: "POLISH_GIRL_02",
						delay: 8.0
					)
				]
			),
			//PSYCHIC_CITY
			Song(
				file: "PSYCHIC_CITY",
				root: "RADIO_16_SILVERLAKE/psychic_city/",
				labels: [
					Label(
						artist: "YACHT",
						title: "Psychic City (Classixx Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "PSYCHIC_CITY_01",
						delay: 8.0
					),
					Intro(
						file: "PSYCHIC_CITY_02",
						delay: 8.0
					)
				]
			),
			//SHINE_A_LIGHT
			Song(
				file: "SHINE_A_LIGHT",
				root: "RADIO_16_SILVERLAKE/shine_a_light/",
				labels: [
					Label(
						artist: "THE C90S",
						title: "Shine A Light (Flight Facilities Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SHINE_A_LIGHT_01",
						delay: 8.0
					),
					Intro(
						file: "SHINE_A_LIGHT_02",
						delay: 8.0
					)
				]
			),
			//SHOOTING_HOLES
			Song(
				file: "SHOOTING_HOLES",
				root: "RADIO_16_SILVERLAKE/shooting_holes/",
				labels: [
					Label(
						artist: "TWIN SHADOW",
						title: "Shooting Holes",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SHOOTING_HOLES_01",
						delay: 8.0
					),
					Intro(
						file: "SHOOTING_HOLES_02",
						delay: 8.0
					)
				]
			),
			//SLEEPWALKING
			Song(
				file: "SLEEPWALKING",
				root: "RADIO_16_SILVERLAKE/sleepwalking/",
				labels: [
					Label(
						artist: "THE CHAIN GANG OF 1974",
						title: "Sleepwalking",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SLEEPWALKING_01",
						delay: 8.0
					),
					Intro(
						file: "SLEEPWALKING_02",
						delay: 8.0
					)
				]
			),
			//SO_MANY_DETAILS
			Song(
				file: "SO_MANY_DETAILS",
				root: "RADIO_16_SILVERLAKE/so_many_details/",
				labels: [
					Label(
						artist: "TORO Y MOI",
						title: "So Many Details",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SO_MANY_DETAILS_01",
						delay: 8.0
					),
					Intro(
						file: "SO_MANY_DETAILS_02",
						delay: 8.0
					)
				]
			),
			//SOMETIMES
			Song(
				file: "SOMETIMES",
				root: "RADIO_16_SILVERLAKE/sometimes/",
				labels: [
					Label(
						artist: "MIAMI HORROR",
						title: "Sometimes",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SOMETIMES_01",
						delay: 8.0
					),
					Intro(
						file: "SOMETIMES_02",
						delay: 8.0
					)
				]
			),
			//STRANGERS_IN_THE_WIND
			Song(
				file: "STRANGERS_IN_THE_WIND",
				root: "RADIO_16_SILVERLAKE/strangers_in_the_wind/",
				labels: [
					Label(
						artist: "CUT COPY",
						title: "Strangers In The Wind",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//THE_DRUMMER
			Song(
				file: "THE_DRUMMER",
				root: "RADIO_16_SILVERLAKE/the_drummer/",
				labels: [
					Label(
						artist: "NIKI & THE DOVE",
						title: "The Drummer",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_DRUMMER_01",
						delay: 8.0
					),
					Intro(
						file: "THE_DRUMMER_02",
						delay: 8.0
					)
				]
			),
			//THE_SET_UP
			Song(
				file: "THE_SET_UP",
				root: "RADIO_16_SILVERLAKE/the_set_up/",
				labels: [
					Label(
						artist: "FAVORED NATIONS",
						title: "The Set Up",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//TRULY_ALIVE
			Song(
				file: "TRULY_ALIVE",
				root: "RADIO_16_SILVERLAKE/truly_alive/",
				labels: [
					Label(
						artist: "MITZI",
						title: "Truly Alive",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TRULY_ALIVE_01",
						delay: 8.0
					),
					Intro(
						file: "TRULY_ALIVE_02",
						delay: 8.0
					)
				]
			),
			//WHEN_YOURE_OUT
			Song(
				file: "WHEN_YOURE_OUT",
				root: "RADIO_16_SILVERLAKE/when_youre_out/",
				labels: [
					Label(
						artist: "KAUF",
						title: "When You're Out",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WHEN_YOURE_OUT_01",
						delay: 8.0
					),
					Intro(
						file: "WHEN_YOURE_OUT_02",
						delay: 8.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		time: [
			"EVENING": ["01","02","03","04"],
			"MORNING": ["01","02","03","04"]
		],
		to: [
			"AD": ["01","02","03","04","05"],
			"NEWS": ["01","02","03","04"]
		]
	),
	
	// MARK: Kult FM
	RadioStation(
		index: 11,
		number: 24,
		name: "Kult FM",
		image: "gta_radio_stations_texture10_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: Space 103.2
	RadioStation(
		index: 12,
		number: 17, /*18*/
		name: "Space 103.2",
		image: "gta_radio_stations_texture02_512",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: true,
		rotate: false,
		root: "RADIO_17_FUNK",
		songs: [
			//BACK_AND_FORTH
			Song(
				file: "BACK_AND_FORTH",
				root: "RADIO_17_FUNK/back_and_forth/",
				labels: [
					Label(
						artist: "CAMEO",
						title: "Back And Forth",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BACK_AND_FORTH_01",
						delay: 8.0
					),
					Intro(
						file: "BACK_AND_FORTH_02",
						delay: 8.0
					)
				]
			),
			//CANT_HOLD_BACK*
			/*Song(
				file: "CANT_HOLD_BACK",
				root: "RADIO_17_FUNK/cant_hold_back/",
				labels: [
					Label(
						artist: "KANO",
						title: "Can't Hold Back (Your Lovin')",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "YOUR_LOVIN_01",
						delay: 8.0
					),
					Intro(
						file: "YOUR_LOVIN_02",
						delay: 8.0
					)
				]
			),*/
			//CUTIE_PIE
			Song(
				file: "CUTIE_PIE",
				root: "RADIO_17_FUNK/cutie_pie/",
				labels: [
					Label(
						artist: "ONE WAY",
						title: "Cutie Pie",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CUTIE_PIE_01",
						delay: 8.0
					),
					Intro(
						file: "CUTIE_PIE_02",
						delay: 8.0
					)
				]
			),
			//DO_IT_ROGER
			Song(
				file: "DO_IT_ROGER",
				root: "RADIO_17_FUNK/do_it_roger/",
				labels: [
					Label(
						artist: "ZAPP & ROGER",
						title: "Do It Roger",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DO_IT_ROGER_01",
						delay: 8.0
					),
					Intro(
						file: "DO_IT_ROGER_02",
						delay: 8.0
					)
				]
			),
			//FLASHBACK
			Song(
				file: "FLASHBACK",
				root: "RADIO_17_FUNK/flashback/",
				labels: [
					Label(
						artist: "IMAGINATION",
						title: "Flashback",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//FLASHLIGHT
			Song(
				file: "FLASHLIGHT",
				root: "RADIO_17_FUNK/flashlight/",
				labels: [
					Label(
						artist: "PARLIAMENT",
						title: "Flashlight",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//FUNKASIZE_YOU
			Song(
				file: "FUNKASIZE_YOU",
				root: "RADIO_17_FUNK/funkasize_you/",
				labels: [
					Label(
						artist: "SHO-NUFF",
						title: "Funkasize You",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//GIVE_IT_TO_ME_BABY
			Song(
				file: "GIVE_IT_TO_ME_BABY",
				root: "RADIO_17_FUNK/give_it_to_me_baby/",
				labels: [
					Label(
						artist: "RICK JAMES",
						title: "Give It To Me Baby",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GIVE_IT_TO_ME_BABY_01",
						delay: 8.0
					),
					Intro(
						file: "GIVE_IT_TO_ME_BABY_02",
						delay: 8.0
					)
				]
			),
			//GOTTA_GET_MY_HANDS_ON_SOME_MONEY
			Song(
				file: "GOTTA_GET_MY_HANDS_ON_SOME_MONEY",
				root: "RADIO_17_FUNK/gotta_get_my_hands_on_some_money/",
				labels: [
					Label(
						artist: "FATBACK BAND",
						title: "Gotta Get My Hands On Some (Money)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GOTTA_GET_MY_HANDS_ON_SOME_MONEY_01",
						delay: 8.0
					),
					Intro(
						file: "GOTTA_GET_MY_HANDS_ON_SOME_MONEY_02",
						delay: 8.0
					)
				]
			),
			//HABOGLABOTRIBIN
			Song(
				file: "HABOGLABOTRIBIN",
				root: "RADIO_17_FUNK/haboglabotribin/",
				labels: [
					Label(
						artist: "BERNARD WRIGHT",
						title: "Haboglabotribin'",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//HEART_BEAT
			Song(
				file: "HEART_BEAT",
				root: "RADIO_17_FUNK/heart_beat/",
				labels: [
					Label(
						artist: "TAANA GARDNER",
						title: "Heartbeat",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HEARTBEAT_01",
						delay: 8.0
					),
					Intro(
						file: "HEARTBEAT_02",
						delay: 8.0
					)
				]
			),
			//HEARTBREAKER
			Song(
				file: "HEARTBREAKER",
				root: "RADIO_17_FUNK/heartbreaker/",
				labels: [
					Label(
						artist: "ZAPP",
						title: "Heartbreaker, Pts. 1-2",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//ID_RATHER_BE_WITH_YOU
			Song(
				file: "ID_RATHER_BE_WITH_YOU",
				root: "RADIO_17_FUNK/id_rather_be_with_you/",
				labels: [
					Label(
						artist: "BOOTSY COLLINS",
						title: "I'd Rather Be With You",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ID_RATHER_BE_WITH_YOU_01",
						delay: 8.0
					),
					Intro(
						file: "ID_RATHER_BE_WITH_YOU_02",
						delay: 8.0
					)
				]
			),
			//IM_IN_LOVE
			Song(
				file: "IM_IN_LOVE",
				root: "RADIO_17_FUNK/im_in_love/",
				labels: [
					Label(
						artist: "EVELYN CHAMPAGNE KING",
						title: "I'm In Love (12\" Dance Mix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IM_IN_LOVE_01",
						delay: 8.0
					),
					Intro(
						file: "IM_IN_LOVE_02",
						delay: 8.0
					)
				]
			),
			//JOYSTICK
			Song(
				file: "JOYSTICK",
				root: "RADIO_17_FUNK/joystick/",
				labels: [
					Label(
						artist: "DAZZ BAND",
						title: "Joystick",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "JOYSTICK_01",
						delay: 8.0
					),
					Intro(
						file: "JOYSTICK_02",
						delay: 8.0
					)
				]
			),
			//MOTHERSHIP_CONNECTION
			Song(
				file: "MOTHERSHIP_CONNECTION",
				root: "RADIO_17_FUNK/mothership_connection/",
				labels: [
					Label(
						artist: "PARLIAMENT",
						title: "Mothership Connection",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//NIGHTS_FEEL_LIKE
			Song(
				file: "NIGHTS_FEEL_LIKE",
				root: "RADIO_17_FUNK/nights_feel_like/",
				labels: [
					Label(
						artist: "BILLY OCEAN",
						title: "Nights (Feel Like Getting Down)",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//PARTY_ALL_THE_TIME
			Song(
				file: "PARTY_ALL_THE_TIME",
				root: "RADIO_17_FUNK/party_all_the_time/",
				labels: [
					Label(
						artist: "EDDIE MURPHY",
						title: "Party All The Time",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SKELETONS
			Song(
				file: "SKELETONS",
				root: "RADIO_17_FUNK/skeletons/",
				labels: [
					Label(
						artist: "STEVIE WONDER",
						title: "Skeletons",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SKELETONS_01",
						delay: 8.0
					),
					Intro(
						file: "SKELETONS_02",
						delay: 8.0
					)
				]
			),
			//TONIGHT
			Song(
				file: "TONIGHT",
				root: "RADIO_17_FUNK/tonight/",
				labels: [
					Label(
						artist: "KLEEER",
						title: "Tonight",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//WALKING_INTO_SUNSHINE
			Song(
				file: "WALKING_INTO_SUNSHINE",
				root: "RADIO_17_FUNK/walking_into_sunshine/",
				labels: [
					Label(
						artist: "CENTRAL LINE",
						title: "Walking Into Sunshine",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//YOURE_THE_ONE_FOR_ME
			Song(
				file: "YOURE_THE_ONE_FOR_ME",
				root: "RADIO_17_FUNK/youre_the_one_for_me/",
				labels: [
					Label(
						artist: "D TRAIN",
						title: "You're The One For Me",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "YOURE_THE_ONE_FOR_ME_01",
						delay: 8.0
					),
					Intro(
						file: "YOURE_THE_ONE_FOR_ME_02",
						delay: 8.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		time: [
			"EVENING": ["01","02","03","04"],
			"MORNING": ["01","02","03","04"]
		],
		to: [
			"AD": ["01","02","03","04","05"],
			"NEWS": ["01","02","03","04","05"]
		]
	),
	
	// MARK: Vinewood Boulevard Radio
	RadioStation(
		index: 13,
		number: 18, /*19*/
		name: "Vinewood Boulevard Radio",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 2,
			column: 3
		),
		randomize: true,
		rotate: false,
		root: "RADIO_18_90S_ROCK",
		songs: [
			//ANSWER_TO_YOURSELF
			Song(
				file: "ANSWER_TO_YOURSELF",
				root: "RADIO_18_90S_ROCK/answer_to_yourself/",
				labels: [
					Label(
						artist: "THE SOFT PACK",
						title: "Answer To Yourself",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ANSWER_TO_YOURSELF_01",
						delay: 8.0
					),
					Intro(
						file: "ANSWER_TO_YOURSELF_02",
						delay: 8.0
					)
				]
			),
			//BLACK_GREASE
			Song(
				file: "BLACK_GREASE",
				root: "RADIO_18_90S_ROCK/black_grease/",
				labels: [
					Label(
						artist: "THE BLACK ANGELS",
						title: "Black Grease",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BLACK_GREASE_01",
						delay: 8.0
					),
					Intro(
						file: "BLACK_GREASE_02",
						delay: 8.0
					)
				]
			),
			//CALIFORNIA_GIRLS
			Song(
				file: "CALIFORNIA_GIRLS",
				root: "RADIO_18_90S_ROCK/california_girls/",
				labels: [
					Label(
						artist: "SHARK?",
						title: "California Grrls",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CALIFORNIA_GIRLS_01",
						delay: 8.0
					),
					Intro(
						file: "CALIFORNIA_GIRLS_02",
						delay: 8.0
					)
				]
			),
			//COCAINE
			Song(
				file: "COCAINE",
				root: "RADIO_18_90S_ROCK/cocaine/",
				labels: [
					Label(
						artist: "FIDLAR",
						title: "Cocaine",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "COCAINE_01",
						delay: 8.0
					),
					Intro(
						file: "COCAINE_02",
						delay: 8.0
					)
				]
			),
			//CRAWLING_AFTER_YOU
			Song(
				file: "CRAWLING_AFTER_YOU",
				root: "RADIO_18_90S_ROCK/crawling_after_you/",
				labels: [
					Label(
						artist: "BASS DRUM OF DEATH",
						title: "Crawling After You",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CRAWLING_AFTER_YOU_01",
						delay: 8.0
					),
					Intro(
						file: "CRAWLING_AFTER_YOU_02",
						delay: 8.0
					)
				]
			),
			//DIDDY_WAH_DIDDY
			Song(
				file: "DIDDY_WAH_DIDDY",
				root: "RADIO_18_90S_ROCK/diddy_wah_diddy/",
				labels: [
					Label(
						artist: "TY SEGALL BAND",
						title: "Diddy Wah Diddy",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//FALL_IN_LINE
			Song(
				file: "FALL_IN_LINE",
				root: "RADIO_18_90S_ROCK/fall_in_line/",
				labels: [
					Label(
						artist: "MIND SPIDERS",
						title: "Fall In Line",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FALL_IN_LINE_01",
						delay: 8.0
					),
					Intro(
						file: "FALL_IN_LINE_02",
						delay: 8.0
					)
				]
			),
			//FIRE_DOESNT_BURN_ITSELF
			Song(
				file: "FIRE_DOESNT_BURN_ITSELF",
				root: "RADIO_18_90S_ROCK/fire_doesnt_burn_itself/",
				labels: [
					Label(
						artist: "SAM FLAX",
						title: "Fire Doesn't Burn Itself",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FIRE_DOESNT_BURN_ITSELF_01",
						delay: 8.0
					),
					Intro(
						file: "FIRE_DOESNT_BURN_ITSELF_02",
						delay: 8.0
					)
				]
			),
			//GONE_FOR_GOOD
			Song(
				file: "GONE_FOR_GOOD",
				root: "RADIO_18_90S_ROCK/gone_for_good/",
				labels: [
					Label(
						artist: "NOBUNNY",
						title: "Gone For Good",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GONE_FOR_GOOD_01",
						delay: 8.0
					),
					Intro(
						file: "GONE_FOR_GOOD_02",
						delay: 8.0
					)
				]
			),
			//HYSTERIA
			Song(
				file: "HYSTERIA",
				root: "RADIO_18_90S_ROCK/hysteria/",
				labels: [
					Label(
						artist: "CEREMONY",
						title: "Hysteria",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//NEXT_STOP
			Song(
				file: "NEXT_STOP",
				root: "RADIO_18_90S_ROCK/next_stop/",
				labels: [
					Label(
						artist: "BLEACHED",
						title: "Next Stop",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NEXT_STOP_01",
						delay: 8.0
					),
					Intro(
						file: "NEXT_STOP_02",
						delay: 8.0
					)
				]
			),
			//NINE_IS_GOD
			Song(
				file: "NINE_IS_GOD",
				root: "RADIO_18_90S_ROCK/nine_is_god/",
				labels: [
					Label(
						artist: "WAVVES",
						title: "Nine Is God",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NINE_IS_GOD_01",
						delay: 8.0
					),
					Intro(
						file: "NINE_IS_GOD_02",
						delay: 8.0
					)
				]
			),
			//SIXPACK
			Song(
				file: "SIXPACK",
				root: "RADIO_18_90S_ROCK/sixpack/",
				labels: [
					Label(
						artist: "JEFF THE BROTHERHOOD",
						title: "Sixpack",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SIXPACK_01",
						delay: 8.0
					),
					Intro(
						file: "SIXPACK_02",
						delay: 8.0
					)
				]
			),
			//SLEEPWALKER
			Song(
				file: "SLEEPWALKER",
				root: "RADIO_18_90S_ROCK/sleepwalker/",
				labels: [
					Label(
						artist: "MOON DUO",
						title: "Sleepwalker",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SLEEPWALKER_01",
						delay: 8.0
					),
					Intro(
						file: "SLEEPWALKER_02",
						delay: 8.0
					)
				]
			),
			//THE_DREAM
			Song(
				file: "THE_DREAM",
				root: "RADIO_18_90S_ROCK/the_dream/",
				labels: [
					Label(
						artist: "THEE OH SEES",
						title: "The Dream",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//THIS_MYSTIC_DECADE
			Song(
				file: "THIS_MYSTIC_DECADE",
				root: "RADIO_18_90S_ROCK/this_mystic_decade/",
				labels: [
					Label(
						artist: "HOT SNAKES",
						title: "This mystic Decade",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THIS_MYSTIC_DECADE_01",
						delay: 8.0
					),
					Intro(
						file: "THIS_MYSTIC_DECADE_02",
						delay: 8.0
					)
				]
			),
			//TURN_IT_AROUND
			Song(
				file: "TURN_IT_AROUND",
				root: "RADIO_18_90S_ROCK/turn_it_around/",
				labels: [
					Label(
						artist: "THE MEN",
						title: "Turn It Around",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TURN_IT_AROUND_01",
						delay: 8.0
					),
					Intro(
						file: "TURN_IT_AROUND_02",
						delay: 8.0
					),
					Intro(
						file: "TURN_IT_AROUND_03",
						delay: 8.0
					)
				]
			),
			//USED_BLOOD
			Song(
				file: "USED_BLOOD",
				root: "RADIO_18_90S_ROCK/used_blood/",
				labels: [
					Label(
						artist: "COLISEUM",
						title: "Used Blood",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "USED_BLOOD_01",
						delay: 8.0
					),
					Intro(
						file: "USED_BLOOD_02",
						delay: 8.0
					)
				]
			),
			//WET_BLANKET
			Song(
				file: "WET_BLANKET",
				root: "RADIO_18_90S_ROCK/wet_blanket/",
				labels: [
					Label(
						artist: "METZ",
						title: "Wet Blanket",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WET_BLANKET_01",
						delay: 8.0
					),
					Intro(
						file: "WET_BLANKET_02",
						delay: 8.0
					),
					Intro(
						file: "WET_BLANKET_03",
						delay: 8.0
					),
					Intro(
						file: "WET_BLANKET_04",
						delay: 8.0
					)
				]
			),
			//WHO_NEEDS_YOU
			Song(
				file: "WHO_NEEDS_YOU",
				root: "RADIO_18_90S_ROCK/who_needs_you/",
				labels: [
					Label(
						artist: "THE ORWELLS",
						title: "Who Needs You",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WHO_NEEDS_YOU_01",
						delay: 8.0
					),
					Intro(
						file: "WHO_NEEDS_YOU_02",
						delay: 8.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48"],
		sid: ["01","02","03","04","05","06","07","08","09"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
		time: [
			"EVENING": ["01","02","03","04","05"],
			"MORNING": ["01","02","03","04","05"]
		],
		to: [
			"AD": ["01","02","03","04","05"],
			"NEWS": ["01","02","03"]
		]
	),
	
	// MARK: Blonded Los Santos 97.8 FM
	RadioStation(
		index: 14,
		number: 20,
		name: "Blonded Los Santos 97.8 FM",
		image: "gta_radio_stations_texture05_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: true,
		root: "DLC_CHRISTMAS2017",
		songs: [
			//RADIO_XM17_P1
			Song(
				file: "RADIO_XM17_P1", //1864.0
				root: "DLC_CHRISTMAS2017/radio_xm17_p1/",
				labels: [
					Label(
						artist: "",
						title: "",
						time: 0.0
					),
					//International Feel
					Label(
						artist: "TODD RUNDGREN",
						title: "International Feel",
						time: 26.0
					),
					//Mr Noah
					Label(
						artist: "PANDA BEAR",
						title: "Mr Noah",
						time: 203.0
					),
					//Provider
					Label(
						artist: "FRANK OCEAN",
						title: "Provider",
						time: 414.0
					),
					//Kno Ya Wrong
					Label(
						artist: "SCHOOLBOY Q FEAT. LANCE SKIIIWALKER",
						title: "Kno Ya Wrong",
						time: 653.0
					),
					//Rain
					Label(
						artist: "SWV",
						title: "Rain",
						time: 978.0
					),
					//On a Farm
					Label(
						artist: "JOY AGAIN",
						title: "On a Farm",
						time: 1224.0
					),
					//Ivy
					Label(
						artist: "FRANK OCEAN",
						title: "Ivy",
						time: 1315.0
					),
					//So In Love
					Label(
						artist: "CURTIS MAYFIELD",
						title: "So In Love",
						time: 1543.0
					)
				],
				set: nil,
				intros: []
			),
			//RADIO_XM17_P2
			Song(
				file: "RADIO_XM17_P2", //2357.0
				root: "DLC_CHRISTMAS2017/radio_xm17_p2/",
				labels: [
					//When Did You Stop Loving Me, When Did I Stop Loving You
					Label(
						artist: "MARVIN GAYE",
						title: "When Did You Stop Loving Me, When Did I Stop Loving You",
						time: 1.0
					),
					//Je ne bois pas beaucoup
					Label(
						artist: "LES YA TOUPAS DU ZAIRE",
						title: "Je ne bois pas beaucoup",
						time: 377.0
					),
					//Andreaen Sand Dunes
					Label(
						artist: "DREXCIYA",
						title: "Andreaen Sand Dunes",
						time: 576.0
					),
					//Dead Presidents II
					Label(
						artist: "JAY-Z",
						title: "Dead Presidents II",
						time: 729.0
					),
					//Crack Rock
					Label(
						artist: "FRANK OCEAN",
						title: "Crack Rock",
						time: 950.0
					),
					//AD - Declasse Yosemite
					Label(
						artist: "",
						title: "",
						time: 1178.0
					),
					//EZ Come, EZ Go
					Label(
						artist: "M.C. MACK",
						title: "EZ Come, EZ Go",
						time: 1242.0
					),
					//IZ-US
					Label(
						artist: "APHEX TWIN",
						title: "IZ-US",
						time: 1452.0
					),
					//Hiders
					Label(
						artist: "BURIAL",
						title: "Hiders",
						time: 1617.0
					),
					//Codeine Crazy
					Label(
						artist: "FUTURE",
						title: "Codeine Crazy",
						time: 1805.0
					),
					//Chanel
					Label(
						artist: "FRANK OCEAN",
						title: "Chanel",
						time: 2143.0
					)
				],
				set: nil,
				intros: []
			),
			//RADIO_XM17_P3
			Song(
				file: "RADIO_XM17_P3", //1919.0
				root: "DLC_CHRISTMAS2017/radio_xm17_p3/",
				labels: [
					//For Real
					Label(
						artist: "LIL UZI VERT",
						title: "For Real",
						time: 1.0
					),
					//First 48
					Label(
						artist: "MIGOS",
						title: "First 48",
						time: 164.0
					),
					//FBG
					Label(
						artist: "SUSPECT",
						title: "FBG",
						time: 363.0
					),
					//Nights
					Label(
						artist: "FRANK OCEAN",
						title: "Nights",
						time: 545.0
					),
					//AD - Pfister neon
					Label(
						artist: "",
						title: "",
						time: 858.0
					),
					//YSL
					Label(
						artist: "GUNNA FEAT. PLAYBOI CARTI",
						title: "YSL",
						time: 911.0
					),
					//Winnin
					Label(
						artist: "CHIEF KEEF FEAT. KING LOUIE",
						title: "Winnin",
						time: 1065.0
					),
					//Miss White Cocaine
					Label(
						artist: "LIL SKO",
						title: "Miss White Cocaine",
						time: 1303.0
					),
					//Man Don't Care
					Label(
						artist: "JME FEAT. GIGGS",
						title: "Man Don't Care",
						time: 1443.0
					),
					//Master
					Label(
						artist: "(SANDY) ALEX G",
						title: "Master",
						time: 1648.0
					),
					//Pretty Sweet
					Label(
						artist: "FRANK OCEAN",
						title: "Pretty Sweet",
						time: 1764.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: Los Santos Underground Radio
	RadioStation(
		index: 15,
		number: 21,
		name: "Los Santos Underground Radio",
		image: "gta_radio_stations_texture06_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: true,
		root: "DLC_BATTLE_MUSIC",
		songs: [
			//BATTLE_MIX1_RADIO_01
			Song(
				file: "BATTLE_MIX1_RADIO_01",
				root: "DLC_BATTLE_MUSIC/battle_mix1_radio_01/",
				labels: [
					//The Plan
					Label(
						artist: "AM$TRAD BILLIONAIRE",
						title: "The Plan",
						time: 0.0
					),
					//Natural States (Edit)
					Label(
						artist: "ARA KOUFAX",
						title: "Natural States (Edit)",
						time: 274.0
					),
					//In The Car Crash (Headgear's Always Crashing In The Same Car Mix)
					Label(
						artist: "SWAYZAK",
						title: "In The Car Crash (Headgear's Always Crashing In The Same Car Mix)",
						time: 619.0
					),
					//Bitcoins (Original Mix)
					Label(
						artist: "D. LYNNWOOD",
						title: "Bitcoins (Original Mix)",
						time: 978.0
					),
					//Don't Stop The Dance (Todd Terje Remix)
					Label(
						artist: "BRYAN FERRY",
						title: "Don't Stop The Dance (Todd Terje Remix)",
						time: 1174.0
					),
					//Madness Of Many
					Label(
						artist: "DENIS HORVAT",
						title: "Madness Of Many",
						time: 1519.0
					)
				],
				set: "Solomun",
				intros: []
			),
			//BATTLE_MIX1_RADIO_02
			Song(
				file: "BATTLE_MIX1_RADIO_02",
				root: "DLC_BATTLE_MUSIC/battle_mix1_radio_02/",
				labels: [
					//Madness Of Many
					Label(
						artist: "DENIS HORVAT",
						title: "Madness Of Many",
						time: 0.0
					),
					//Incoherence
					Label(
						artist: "JOHANNES BRECHT",
						title: "Incoherence",
						time: 127.0
					),
					//Ich Muss Los
					Label(
						artist: "SOLOMUN",
						title: "Ich Muss Los",
						time: 472.0
					),
					//Monster
					Label(
						artist: "MATTHEW DEAR",
						title: "Monster",
						time: 752.0
					),
					//WRKTRX3
					Label(
						artist: "TRUNCATE",
						title: "WRKTRX3",
						time: 962.0
					),
					//Spin (Original Mix)
					Label(
						artist: "FLOORPLAN",
						title: "Spin (Original Mix)",
						time: 1199.0
					),
					//The Freaks Come Out (Original 2000 Freaks Mix)
					Label(
						artist: "CEVIN FISHER",
						title: "The Freaks Come Out (Original 2000 Freaks Mix)",
						time: 1489.0
					),
					//You're Mine (Clean Version)
					Label(
						artist: "CHRIS LUM",
						title: "You're Mine (Clean Version)",
						time: 1779.0
					),
					//The Q
					Label(
						artist: "ALEX METRIC & TEN VEN",
						title: "The Q",
						time: 1980.0
					),
					//Customer Is King
					Label(
						artist: "SOLOMUN",
						title: "Customer Is King",
						time: 2285.0
					)
				],
				set: "Solomun",
				intros: []
			),
			//BATTLE_MIX1_RADIO_03
			Song(
				file: "BATTLE_MIX1_RADIO_03",
				root: "DLC_BATTLE_MUSIC/battle_mix1_radio_03/",
				labels: [
					//Customer Is King
					Label(
						artist: "SOLOMUN",
						title: "Customer Is King",
						time: 0.0
					),
					//Planet 9
					Label(
						artist: "ADAM PORT",
						title: "Planet 9",
						time: 208.0
					),
					//The End To My Beginning
					Label(
						artist: "DUBFIRE",
						title: "The End To My Beginning",
						time: 454.0
					),
					//You Want It Darker (Solomun Remix)
					Label(
						artist: "LEONARD COHEN",
						title: "You Want It Darker (Solomun Remix)",
						time: 877.0
					)
				],
				set: "Solomun",
				intros: []
			),
			//BATTLE_MIX2_RADIO_01
			Song(
				file: "BATTLE_MIX2_RADIO_01",
				root: "DLC_BATTLE_MUSIC/battle_mix2_radio_01/",
				labels: [
					//Overture
					Label(
						artist: "TALE OF US",
						title: "Overture",
						time: 0.0
					),
					//1911
					Label(
						artist: "TALE OF US",
						title: "1911",
						time: 61.0
					),
					//Trevor's Dream
					Label(
						artist: "TALE OF US",
						title: "Trevor's Dream",
						time: 289.0
					),
					//Vinewood Blues
					Label(
						artist: "TALE OF US",
						title: "Vinewood Blues",
						time: 438.0
					),
					//Anywhere
					Label(
						artist: "TALE OF US",
						title: "Anywhere",
						time: 644.0
					),
					//Symphony of the Night
					Label(
						artist: "TALE OF US",
						title: "Symphony of the Night",
						time: 875.0
					)
				],
				set: "Tale Of Us",
				intros: []
			),
			//BATTLE_MIX2_RADIO_02
			Song(
				file: "BATTLE_MIX2_RADIO_02",
				root: "DLC_BATTLE_MUSIC/battle_mix2_radio_02/",
				labels: [
					//Symphony of the Night
					Label(
						artist: "TALE OF US",
						title: "Symphony of the Night",
						time: 0.0
					),
					//Another World
					Label(
						artist: "TALE OF US",
						title: "Another World",
						time: 39.0
					),
					//The Portal
					Label(
						artist: "TALE OF US",
						title: "The Portal",
						time: 240.0
					),
					//Solitude
					Label(
						artist: "TALE OF US",
						title: "Solitude",
						time: 450.0
					),
					//Morgan's Fate
					Label(
						artist: "TALE OF US",
						title: "Morgan's Fate",
						time: 728.0
					),
					//Fisherman's Horizon
					Label(
						artist: "TALE OF US",
						title: "Fisherman's Horizon",
						time: 1018.0
					),
					//Myst
					Label(
						artist: "TALE OF US",
						title: "Myst",
						time: 1209.0
					)
				],
				set: "Tale Of Us",
				intros: []
			),
			//BATTLE_MIX2_RADIO_03
			Song(
				file: "BATTLE_MIX2_RADIO_03",
				root: "DLC_BATTLE_MUSIC/battle_mix2_radio_03/",
				labels: [
					//Myst
					Label(
						artist: "TALE OF US",
						title: "Myst",
						time: 0.0
					),
					//Seeds
					Label(
						artist: "TALE OF US",
						title: "Seeds",
						time: 26.0
					),
					//Endless Journey
					Label(
						artist: "TALE OF US",
						title: "Endless Journey",
						time: 205.0
					),
					//Valkyr
					Label(
						artist: "TALE OF US",
						title: "Valkyr",
						time: 393.0
					),
					//In Hyrule
					Label(
						artist: "TALE OF US",
						title: "In Hyrule",
						time: 560.0
					),
					//Disgracelands
					Label(
						artist: "TALE OF US",
						title: "Disgracelands",
						time: 709.0
					),
					//Heart of Darkness
					Label(
						artist: "TALE OF US",
						title: "Heart of Darkness",
						time: 944.0
					)
				],
				set: "Tale Of Us",
				intros: []
			),
			//BATTLE_MIX3_RADIO_01
			Song(
				file: "BATTLE_MIX3_RADIO_01",
				root: "DLC_BATTLE_MUSIC/battle_mix3_radio_01/",
				labels: [
					//Convergence
					Label(
						artist: "CARL FINLOW",
						title: "Convergence",
						time: 0.0
					),
					//Yes I Do
					Label(
						artist: "CARAVACA",
						title: "Yes I Do",
						time: 257.0
					),
					//The Atmospherian (Tornado Wallace Remix)
					Label(
						artist: "WARP FACTOR 9",
						title: "The Atmospherian (Tornado Wallace Remix)",
						time: 482.0
					),
					//Roman (Bas Ibellini Remix)
					Label(
						artist: "MASHROU' LEILA",
						title: "Roman (Bas Ibellini Remix)",
						time: 745.0
					),
					//Connection (I-Cube Rework)
					Label(
						artist: "FUTURE FOUR",
						title: "Connection (I-Cube Rework)",
						time: 980.0
					)
				],
				set: "Dixon",
				intros: []
			),
			//BATTLE_MIX3_RADIO_02
			Song(
				file: "BATTLE_MIX3_RADIO_02",
				root: "DLC_BATTLE_MUSIC/battle_mix3_radio_02/",
				labels: [
					//Connection (I-Cube Rework)
					Label(
						artist: "FUTURE FOUR",
						title: "Connection (I-Cube Rework)",
						time: 0.0
					),
					//Quinquerime
					Label(
						artist: "RITE DE PASSAGE",
						title: "Quinquerime",
						time: 32.0
					),
					//Electro Pharaoh (Instrumental)
					Label(
						artist: "THE EGYPTIAN LOVER",
						title: "Electro Pharaoh (Instrumental)",
						time: 235.0
					),
					//Telstar
					Label(
						artist: "MARCUS L.",
						title: "Telstar",
						time: 396.0
					),
					//Bring U Up (Deetron Edit)
					Label(
						artist: "ROMANTHONY",
						title: "Bring U Up (Deetron Edit)",
						time: 655.0
					),
					//5 Seconds
					Label(
						artist: "SOLAR",
						title: "5 Seconds",
						time: 937.0
					),
					//And Dance
					Label(
						artist: "SHARIF LAFFREY",
						title: "And Dance",
						time: 1259.0
					)
				],
				set: "Dixon",
				intros: []
			),
			//BATTLE_MIX3_RADIO_03
			Song(
				file: "BATTLE_MIX3_RADIO_03",
				root: "DLC_BATTLE_MUSIC/battle_mix3_radio_03/",
				labels: [
					//And Dance
					Label(
						artist: "SHARIF LAFFREY",
						title: "And Dance",
						time: 0.0
					),
					//Sensation (Dub Version)
					Label(
						artist: "RON HARDY",
						title: "Sensation (Dub Version)",
						time: 190.0
					),
					//Sharivari (Digital Original Aux 88 Mix)
					Label(
						artist: "AUX 88",
						title: "Sharivari (Digital Original Aux 88 Mix)",
						time: 344.0
					),
					//OAR03-B
					Label(
						artist: "ONI AYHUN",
						title: "OAR03-B",
						time: 592.0
					),
					//Reach Out Your Hand (Erol Alkan Rework) - GTA Edit
					Label(
						artist: "TCK FT. JG",
						title: "Reach Out Your Hand (Erol Alkan Rework) - GTA Edit",
						time: 909.0
					)
				],
				set: "Dixon",
				intros: []
			),
			//BATTLE_MIX4_RADIO_01
			Song(
				file: "BATTLE_MIX4_RADIO_01",
				root: "DLC_BATTLE_MUSIC/battle_mix4_radio_01/",
				labels: [
					//Sensation
					Label(
						artist: "RON HARDY",
						title: "Sensation",
						time: 0.0
					),
					//Where Ya At
					Label(
						artist: "DERRICK CARTER",
						title: "Where Ya At",
						time: 212.0
					),
					//Bugatti
					Label(
						artist: "TIGA",
						title: "Bugatti",
						time: 372.0
					),
					//Miura
					Label(
						artist: "METRO AREA",
						title: "Miura",
						time: 682.0//DOUBLE CHECK TIME
					)
				],
				set: "The Black Madonna",
				intros: []
			),
			//BATTLE_MIX4_RADIO_02
			Song(
				file: "BATTLE_MIX4_RADIO_02",
				root: "DLC_BATTLE_MUSIC/battle_mix4_radio_02/",
				labels: [
					//Miura
					Label(
						artist: "METRO AREA",
						title: "Miura",
						time: 0.0
					),
					//A Jealous Heart Never Rests
					Label(
						artist: "THE BLACK MADONNA",
						title: "A Jealous Heart Never Rests",
						time: 128.0
					),
					//Beat Box
					Label(
						artist: "ART OF NOISE",
						title: "Beat Box",
						time: 287.0
					),
					//We Still Believe
					Label(
						artist: "THE BLACK MADONNA FT. JAMIE PRINCIPLE",
						title: "We Still Believe",
						time: 565.0
					),
					//Can't Believe
					Label(
						artist: "NANCY MARTIN",
						title: "Can't Believe",
						time: 933.0
					),
					//Hydraulic Pump Pt. 3
					Label(
						artist: "P-FUNK ALL STARS",
						title: "Hydraulic Pump Pt. 3",
						time: 1250.0
					),
					//Computer Madness
					Label(
						artist: "STEVE POINDEXTER",
						title: "Computer Madness",
						time: 1419.0
					),
					//Devotion
					Label(
						artist: "TEN CITY",
						title: "Devotion",
						time: 1575.0
					)
				],
				set: "The Black Madonna",
				intros: []
			),
			//BATTLE_MIX4_RADIO_03
			Song(
				file: "BATTLE_MIX4_RADIO_03",
				root: "DLC_BATTLE_MUSIC/battle_mix4_radio_03/",
				labels: [
					//Devotion
					Label(
						artist: "TEN CITY",
						title: "Devotion",
						time: 0.0
					),
					//We Can Never Be Apart
					Label(
						artist: "THE BLACK MADONNA",
						title: "We Can Never Be Apart",
						time: 161.0
					),
					//Steppin' Out
					Label(
						artist: "JOE JACKSON",
						title: "Steppin' Out",
						time: 614.0
					),
					//He Is The Voice I Hear
					Label(
						artist: "THE BLACK MADONNA",
						title: "He Is The Voice I Hear",
						time: 861.0
					)
				],
				set: "The Black Madonna",
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: iFruit Radio
	RadioStation(
		index: 16,
		number: 22,
		name: "iFruit Radio",
		image: "gta_radio_stations_texture07_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: Self Radio
	RadioStation(
		index: 17,
		number: 0,
		name: "Self Radio",
		image: "gta_radio_stations_texture03_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: Still Slipping Los Santos
	RadioStation(
		index: 18,
		number: 25,
		name: "Still Slipping Los Santos",
		image: "gta_radio_stations_texture09_128",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: nil,
		songs: nil,
		general: nil,
		sid: nil,
		mono_solo: nil,
		time: nil,
		to: nil
	),
	
	// MARK: Los Santos Rock Radio
	RadioStation(
		index: 19,
		number: 1,
		name: "Los Santos Rock Radio",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 4,
			column: 1
		),
		randomize: true,
		rotate: false,
		root: "RADIO_01_CLASS_ROCK",
		songs: [
			//ALL_THE_THINGS_SHE_SAID
			Song(
				file: "ALL_THE_THINGS_SHE_SAID",
				root: "RADIO_01_CLASS_ROCK/all_the_things_she_said/",
				labels: [
					Label(
						artist: "SIMPLE MINDS",
						title: "All The Things She Said",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ALL_THE_THINGS_SHE_SAID_01",
						delay: 8.0
					),
					Intro(
						file: "ALL_THE_THINGS_SHE_SAID_02",
						delay: 8.0
					)
				]
			),
			//BAKER_STREET
			Song(
				file: "BAKER_STREET",
				root: "RADIO_01_CLASS_ROCK/baker_street/",
				labels: [
					Label(
						artist: "GERRY RAFFERTY",
						title: "Baker Street",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BAKER_STREET_01",
						delay: 8.0
					),
					Intro(
						file: "BAKER_STREET_02",
						delay: 8.0
					)
				]
			),
			//BIG_LOG
			Song(
				file: "BIG_LOG",
				root: "RADIO_01_CLASS_ROCK/big_log/",
				labels: [
					Label(
						artist: "ROBERT PLANT",
						title: "Big Log",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BIG_LOG_01",
						delay: 8.0
					),
					Intro(
						file: "BIG_LOG_02",
						delay: 8.0
					)
				]
			),
			//BLACK_VELVET
			Song(
				file: "BLACK_VELVET",
				root: "RADIO_01_CLASS_ROCK/black_velvet/",
				labels: [
					Label(
						artist: "ALANNAH MYLES",
						title: "Black Velvet",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BLACK_VELVET_01",
						delay: 8.0
					),
					Intro(
						file: "BLACK_VELVET_02",
						delay: 8.0
					)
				]
			),
			//BURNING_HEART
			Song(
				file: "BURNING_HEART",
				root: "RADIO_01_CLASS_ROCK/burning_heart/",
				labels: [
					Label(
						artist: "SURVIVOR",
						title: "Burning Heart",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BURNING_HEART_01",
						delay: 8.0
					),
					Intro(
						file: "BURNING_HEART_02",
						delay: 8.0
					)
				]
			),
			//CARRY_ON_MY_WAYWARD_SUN
			Song(
				file: "CARRY_ON_MY_WAYWARD_SUN",
				root: "RADIO_01_CLASS_ROCK/carry_on_my_wayward_sun/",
				labels: [
					Label(
						artist: "KANSAS",
						title: "Carry On Wayward Son",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CARRY_ON_MY_WAYWARD_SUN_01",
						delay: 8.0
					),
					Intro(
						file: "CARRY_ON_MY_WAYWARD_SUN_02",
						delay: 8.0
					)
				]
			),
			//CATS_IN_THE_CRADLE
			Song(
				file: "CATS_IN_THE_CRADLE",
				root: "RADIO_01_CLASS_ROCK/cats_in_the_cradle/",
				labels: [
					Label(
						artist: "HARRY CHAPIN",
						title: "Cat's In The Cradle",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CATS_IN_THE_CRADLE_01",
						delay: 8.0
					)
				]
			),
			//CIRCLE_IN_THE_SAND
			Song(
				file: "CIRCLE_IN_THE_SAND",
				root: "RADIO_01_CLASS_ROCK/circle_in_the_sand/",
				labels: [
					Label(
						artist: "BELINDA CARLISLE",
						title: "Circle In The Sand",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//COMING_ON_STRONG
			Song(
				file: "COMING_ON_STRONG",
				root: "RADIO_01_CLASS_ROCK/coming_on_strong/",
				labels: [
					Label(
						artist: "BROKEN ENGLISH",
						title: "Coming On Strong",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "COMING_ON_STRONG_01",
						delay: 8.0
					),
					Intro(
						file: "COMING_ON_STRONG_02",
						delay: 8.0
					)
				]
			),
			//DANGER_ZONE
			Song(
				file: "DANGER_ZONE",
				root: "RADIO_01_CLASS_ROCK/danger_zone/",
				labels: [
					Label(
						artist: "KENNY LOGGINS",
						title: "Danger Zone",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//DIRTY_WHITE_BOY
			Song(
				file: "DIRTY_WHITE_BOY",
				root: "RADIO_01_CLASS_ROCK/dirty_white_boy/",
				labels: [
					Label(
						artist: "FOREIGNER",
						title: "Dirty White Boy",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DIRTY_WHITE_BOY_01",
						delay: 8.0
					),
					Intro(
						file: "DIRTY_WHITE_BOY_02",
						delay: 8.0
					)
				]
			),
			//FORTUNATE_SON
			Song(
				file: "FORTUNATE_SON",
				root: "RADIO_01_CLASS_ROCK/fortunate_son/",
				labels: [
					Label(
						artist: "CREEDENCE CLEARWATER REVIVAL",
						title: "Fortunate Son",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FORTUNATE_SON_01",
						delay: 8.0
					),
					Intro(
						file: "FORTUNATE_SON_02",
						delay: 8.0
					)
				]
			),
			//GIMME_ALL_YOUR_LOVIN
			Song(
				file: "GIMME_ALL_YOUR_LOVIN",
				root: "RADIO_01_CLASS_ROCK/gimme_all_your_lovin/",
				labels: [
					Label(
						artist: "ZZ TOP",
						title: "Gimme All Your Lovin'",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GIMME_ALL_YOUR_LOVIN_01",
						delay: 8.0
					),
					Intro(
						file: "GIMME_ALL_YOUR_LOVIN_02",
						delay: 8.0
					)
				]
			),
			//HEARTBEAT
			Song(
				file: "HEARTBEAT",
				root: "RADIO_01_CLASS_ROCK/heartbeat/",
				labels: [
					Label(
						artist: "DON JOHNSON",
						title: "Heartbeat",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HEARTBEAT_01",
						delay: 8.0
					),
					Intro(
						file: "HEARTBEAT_02",
						delay: 8.0
					)
				]
			),
			//HIGHER_LOVE
			Song(
				file: "HIGHER_LOVE",
				root: "RADIO_01_CLASS_ROCK/higher_love/",
				labels: [
					Label(
						artist: "STEVE WINWOOD",
						title: "Higher Love",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HIGHER_LOVE_01",
						delay: 8.0
					),
					Intro(
						file: "HIGHER_LOVE_02",
						delay: 8.0
					)
				]
			),
			//HOLLYWOOD_NIGHTS
			Song(
				file: "HOLLYWOOD_NIGHTS",
				root: "RADIO_01_CLASS_ROCK/hollywood_nights/",
				labels: [
					Label(
						artist: "BOB SEGER",
						title: "Hollywood Nights",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HOLLYWOOD_NIGHTS_01",
						delay: 8.0
					),
					Intro(
						file: "HOLLYWOOD_NIGHTS_02",
						delay: 8.0
					)
				]
			),
			//I_CANT_WAIT
			Song(
				file: "I_CANT_WAIT",
				root: "RADIO_01_CLASS_ROCK/i_cant_wait/",
				labels: [
					Label(
						artist: "STEVIE NICKS",
						title: "I Can't Wait",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_CANT_WAIT_01",
						delay: 8.0
					),
					Intro(
						file: "I_CANT_WAIT_02",
						delay: 8.0
					)
				]
			),
			//I_DONT_CARE_ANYMORE
			Song(
				file: "I_DONT_CARE_ANYMORE",
				root: "RADIO_01_CLASS_ROCK/i_dont_care_anymore/",
				labels: [
					Label(
						artist: "PHIL COLLINS",
						title: "I Don't Care Anymore",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//I_WOULDNT_WANT_TO_BE
			Song(
				file: "I_WOULDNT_WANT_TO_BE",
				root: "RADIO_01_CLASS_ROCK/i_wouldnt_want_to_be/",
				labels: [
					Label(
						artist: "THE ALAN PARSONS PROJECT",
						title: "I Wouldn't Want To Be Like You",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_WOULDNT_WANT_TO_BE_01",
						delay: 8.0
					),
					Intro(
						file: "I_WOULDNT_WANT_TO_BE_02",
						delay: 8.0
					)
				]
			),
			//IF_YOU_LEAVE_ME_NOW
			Song(
				file: "IF_YOU_LEAVE_ME_NOW",
				root: "RADIO_01_CLASS_ROCK/if_you_leave_me_now/",
				labels: [
					Label(
						artist: "CHICAGO",
						title: "If You Leave Me Now",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IF_YOU_LEAVE_ME_NOW_01",
						delay: 8.0
					),
					Intro(
						file: "IF_YOU_LEAVE_ME_NOW_02",
						delay: 8.0
					)
				]
			),
			//IM_FREE
			Song(
				file: "IM_FREE",
				root: "RADIO_01_CLASS_ROCK/im_free/",
				labels: [
					Label(
						artist: "KENNY LOGGINS",
						title: "I'm Free(Heaven Helps The Man)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IM_FREE_01",
						delay: 8.0
					),
					Intro(
						file: "IM_FREE_02",
						delay: 8.0
					)
				]
			),
			//LONELY_IS_THE_NIGHT
			Song(
				file: "LONELY_IS_THE_NIGHT",
				root: "RADIO_01_CLASS_ROCK/lonely_is_the_night/",
				labels: [
					Label(
						artist: "BILLY SQUIER",
						title: "Lonely Is The Night",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LONELY_IS_THE_NIGHT_01",
						delay: 8.0
					),
					Intro(
						file: "LONELY_IS_THE_NIGHT_02",
						delay: 8.0
					)
				]
			),
			//MISSISSIPPI_QUEEN
			Song(
				file: "MISSISSIPPI_QUEEN",
				root: "RADIO_01_CLASS_ROCK/mississippi_queen/",
				labels: [
					Label(
						artist: "MOUNTAIN",
						title: "Mississippi Queen",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MISSISSIPPI_QUEEN_01",
						delay: 8.0
					),
					Intro(
						file: "MISSISSIPPI_QUEEN_02",
						delay: 8.0
					)
				]
			),
			//NIGHT_MOVES
			Song(
				file: "NIGHT_MOVES",
				root: "RADIO_01_CLASS_ROCK/night_moves/",
				labels: [
					Label(
						artist: "BOB SEGER",
						title: "Night Moves",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NIGHT_MOVES_01",
						delay: 8.0
					),
					Intro(
						file: "NIGHT_MOVES_02",
						delay: 8.0
					)
				]
			),
			//OGDENS_NUT_GONE_FLAKE
			Song(
				file: "OGDENS_NUT_GONE_FLAKE",
				root: "RADIO_01_CLASS_ROCK/ogdens_nut_gone_flake/",
				labels: [
					Label(
						artist: "SMALL FACES",
						title: "Ogden's Nut Gone Flake",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "OGDENS_NUT_GONE_FLAKE_01",
						delay: 8.0
					),
					Intro(
						file: "OGDENS_NUT_GONE_FLAKE_02",
						delay: 8.0
					)
				]
			),
			//PEACE_OF_MIND
			Song(
				file: "PEACE_OF_MIND",
				root: "RADIO_01_CLASS_ROCK/peace_of_mind/",
				labels: [
					Label(
						artist: "BOSTON",
						title: "Peace Of Mind",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "PEACE_OF_MIND_01",
						delay: 8.0
					),
					Intro(
						file: "PEACE_OF_MIND_02",
						delay: 8.0
					)
				]
			),
			//PHOTOGRAPH
			Song(
				file: "PHOTOGRAPH",
				root: "RADIO_01_CLASS_ROCK/photograph/",
				labels: [
					Label(
						artist: "DEF LEPPARD",
						title: "Photograph",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "PHOTOGRAPH_01",
						delay: 8.0
					),
					Intro(
						file: "PHOTOGRAPH_02",
						delay: 8.0
					)
				]
			),
			//RADIO_GA_GA
			Song(
				file: "RADIO_GA_GA",
				root: "RADIO_01_CLASS_ROCK/radio_ga_ga/",
				labels: [
					Label(
						artist: "QUEEN",
						title: "Radio Ga Ga",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "RADIO_GA_GA_01",
						delay: 8.0
					)
				]
			),
			//RAIN
			Song(
				file: "RAIN",
				root: "RADIO_01_CLASS_ROCK/rain/",
				labels: [
					Label(
						artist: "THE CULT",
						title: "Rain",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "RAIN_01",
						delay: 8.0
					),
					Intro(
						file: "RAIN_02",
						delay: 8.0
					)
				]
			),
			//ROCKIN_ME
			Song(
				file: "ROCKIN_ME",
				root: "RADIO_01_CLASS_ROCK/rockin_me/",
				labels: [
					Label(
						artist: "STEVE MILLER",
						title: "Rock'n Me",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//ROUNDABOUT
			Song(
				file: "ROUNDABOUT",
				root: "RADIO_01_CLASS_ROCK/roundabout/",
				labels: [
					Label(
						artist: "YES",
						title: "Roundabout",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ROUNDABOUT_01",
						delay: 8.0
					),
					Intro(
						file: "ROUNDABOUT_02",
						delay: 8.0
					)
				]
			),
			//SATURDAY_NIGHTS_ALRIGHT
			Song(
				file: "SATURDAY_NIGHTS_ALRIGHT",
				root: "RADIO_01_CLASS_ROCK/saturday_nights_alright/",
				labels: [
					Label(
						artist: "ELTON JOHN",
						title: "Saturday Night's Alright For Fighting",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SATURDAY_NIGHTS_ALRIGHT_01",
						delay: 8.0
					),
					Intro(
						file: "SATURDAY_NIGHTS_ALRIGHT_02",
						delay: 8.0
					)
				]
			),
			//SHADOWS_OF_THE_NIGHT
			Song(
				file: "SHADOWS_OF_THE_NIGHT",
				root: "RADIO_01_CLASS_ROCK/shadows_of_the_night/",
				labels: [
					Label(
						artist: "PAT BENATAR",
						title: "Shadows Of The Night",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SHADOWS_OF_THE_NIGHT_01",
						delay: 8.0
					),
					Intro(
						file: "SHADOWS_OF_THE_NIGHT_02",
						delay: 8.0
					),
					Intro(
						file: "SHADOWS_OF_THE_NIGHT_03",
						delay: 8.0
					)
				]
			),
			//THE_BREAKUP_SONG
			Song(
				file: "THE_BREAKUP_SONG",
				root: "RADIO_01_CLASS_ROCK/the_breakup_song/",
				labels: [
					Label(
						artist: "GREG KIHN BAND",
						title: "The Breakup Song (They Don't Write 'Em)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_BREAKUP_SONG_01",
						delay: 8.0
					),
					Intro(
						file: "THE_BREAKUP_SONG_02",
						delay: 8.0
					)
				]
			),
			//THIRTY_DAYS_IN_THE_HOLE
			Song(
				file: "THIRTY_DAYS_IN_THE_HOLE",
				root: "RADIO_01_CLASS_ROCK/thirty_days_in_the_hole/",
				labels: [
					Label(
						artist: "HUMBLE PIE",
						title: "Thirty Days In The Hole",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THIRTY_DAYS_IN_THE_HOLE_01",
						delay: 8.0
					),
					Intro(
						file: "THIRTY_DAYS_IN_THE_HOLE_02",
						delay: 8.0
					)
				]
			),
			//TOO_LATE_FOR_GOODBYES
			Song(
				file: "TOO_LATE_FOR_GOODBYES",
				root: "RADIO_01_CLASS_ROCK/too_late_for_goodbyes/",
				labels: [
					Label(
						artist: "JULIAN LENNON",
						title: "Too Late For Goodbyes",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TOO_LATE_FOR_GOODBYES_01",
						delay: 8.0
					),
					Intro(
						file: "TOO_LATE_FOR_GOODBYES_02",
						delay: 8.0
					)
				]
			),
			//WE_BUILT_THIS_CITY
			Song(
				file: "WE_BUILT_THIS_CITY",
				root: "RADIO_01_CLASS_ROCK/we_built_this_city/",
				labels: [
					Label(
						artist: "STARSHIP",
						title: "We Built This City",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WE_BUILT_THIS_CITY_01",
						delay: 8.0
					),
					Intro(
						file: "WE_BUILT_THIS_CITY_02",
						delay: 8.0
					)
				]
			),
			//WHAT_A_FOOL_BELIEVES
			Song(
				file: "WHAT_A_FOOL_BELIEVES",
				root: "RADIO_01_CLASS_ROCK/what_a_fool_believes/",
				labels: [
					Label(
						artist: "THE DOOBIE BROTHERS",
						title: "What A Fool Believes",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25"],
		time: [
			"EVENING": ["01","02","03","04","05","06","07"],
			"MORNING": ["01","02","03","04","05","06","07"]
		],
		to: [
			"AD": ["01","02","03","04","05","06","07"],
			"NEWS": ["01","02","03","04","05","06"]
		]
	),
	
	// MARK: Non-Stop-Pop FM
	RadioStation(
		index: 20,
		number: 2,
		name: "Non-Stop-Pop FM",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 1,
			column: 2
		),
		randomize: true,
		rotate: false,
		root: "RADIO_02_POP",
		songs: [
			//ADULT_EDUCATION
			Song(
				file: "ADULT_EDUCATION",
				root: "RADIO_02_POP/adult_education/",
				labels: [
					Label(
						artist: "HALL & OATS",
						title: "Adult Education",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ADULT_EDUCATION_01",
						delay: 8.0
					),
					Intro(
						file: "ADULT_EDUCATION_02",
						delay: 8.0
					)
				]
			),
			//ALRIGHT
			Song(
				file: "ALRIGHT",
				root: "RADIO_02_POP/alright/",
				labels: [
					Label(
						artist: "JAMIROQUAI",
						title: "Alright",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//ANTHEM
			Song(
				file: "ANTHEM",
				root: "RADIO_02_POP/anthem/",
				labels: [
					Label(
						artist: "N-JOI",
						title: "Anthem",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ANTHEM_01",
						delay: 8.0
					),
					Intro(
						file: "ANTHEM_02",
						delay: 8.0
					)
				]
			),
			//APPLAUSE
			Song(
				file: "APPLAUSE",
				root: "RADIO_02_POP/applause/",
				labels: [
					Label(
						artist: "LADY GAGA",
						title: "Applause",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "APPLAUSE_01",
						delay: 8.0
					),
					Intro(
						file: "APPLAUSE_02",
						delay: 8.0
					)
				]
			),
			//BAD_GIRLS
			Song(
				file: "BAD_GIRLS",
				root: "RADIO_02_POP/bad_girls/",
				labels: [
					Label(
						artist: "M.I.A.",
						title: "Bad Girls",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BAD_GIRLS_01",
						delay: 8.0
					),
					Intro(
						file: "BAD_GIRLS_02",
						delay: 8.0
					)
				]
			),
			//CIRCLE_IN_THE_SAND*
			/*Song(
				file: "CIRCLE_IN_THE_SAND",
				root: "RADIO_01_CLASS_ROCK/circle_in_the_sand/",
				labels: [
					Label(
						artist: "",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CIRCLE_IN_THE_SAND_01",
						delay: 8.0
					),
					Intro(
						file: "CIRCLE_IN_THE_SAND_02",
						delay: 8.0
					)
				]
			),*/
			//COOLER_THAN_ME
			Song(
				file: "COOLER_THAN_ME",
				root: "RADIO_02_POP/cooler_than_me/",
				labels: [
					Label(
						artist: "MIKE POSNER",
						title: "Cooler Than Me",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "COOLER_THAN_ME_01",
						delay: 8.0
					),
					Intro(
						file: "COOLER_THAN_ME_02",
						delay: 8.0
					)
				]
			),
			//DAYS_GO_BY
			Song(
				file: "DAYS_GO_BY",
				root: "RADIO_02_POP/days_go_by/",
				labels: [
					Label(
						artist: "DIRTY VEGAS",
						title: "Days Go By",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DAYS_GO_BY_01",
						delay: 8.0
					),
					Intro(
						file: "DAYS_GO_BY_02",
						delay: 8.0
					)
				]
			),
			//DONT_WANNA_FALL_IN_LOVE
			Song(
				file: "DONT_WANNA_FALL_IN_LOVE",
				root: "RADIO_02_POP/dont_wanna_fall_in_love/",
				labels: [
					Label(
						artist: "JANE CHILD",
						title: "Don't Wanna Fall In Love",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DONT_WANNA_FALL_IN_LOVE_01",
						delay: 8.0
					),
					Intro(
						file: "DONT_WANNA_FALL_IN_LOVE_02",
						delay: 8.0
					)
				]
			),
			//EVERYTHING_SHE_WANTS
			Song(
				file: "EVERYTHING_SHE_WANTS",
				root: "RADIO_02_POP/everything_she_wants/",
				labels: [
					Label(
						artist: "WHAM!",
						title: "Everything She Wants",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "EVERYTHING_SHE_WANTS_01",
						delay: 8.0
					),
					Intro(
						file: "EVERYTHING_SHE_WANTS_02",
						delay: 8.0
					)
				]
			),
			//FEEL_GOOD_INC
			Song(
				file: "FEEL_GOOD_INC",
				root: "RADIO_02_POP/feel_good_inc/",
				labels: [
					Label(
						artist: "GORILLAZ",
						title: "Feel Good Inc.",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FEEL_GOOD_INC_01",
						delay: 8.0
					),
					Intro(
						file: "FEEL_GOOD_INC_02",
						delay: 8.0
					)
				]
			),
			//GIMME_MORE
			Song(
				file: "GIMME_MORE",
				root: "RADIO_02_POP/gimme_more/",
				labels: [
					Label(
						artist: "BRITNEY SPEARS",
						title: "Gimme More",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GIMME_MORE_01",
						delay: 8.0
					),
					Intro(
						file: "GIMME_MORE_02",
						delay: 8.0
					)
				]
			),
			//GLAMOROUS
			Song(
				file: "GLAMOROUS",
				root: "RADIO_02_POP/glamorous/",
				labels: [
					Label(
						artist: "FERGIE",
						title: "Glamorous",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GLAMOROUS_01",
						delay: 8.0
					),
					Intro(
						file: "GLAMOROUS_02",
						delay: 8.0
					)
				]
			),
			//I_WANT_IT_THAT_WAY
			Song(
				file: "I_WANT_IT_THAT_WAY",
				root: "RADIO_02_POP/i_want_it_that_way/",
				labels: [
					Label(
						artist: "BACKSTREET BOYS",
						title: "I Want It That Way",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_WANT_IT_THAT_WAY_01",
						delay: 8.0
					),
					Intro(
						file: "I_WANT_IT_THAT_WAY_02",
						delay: 8.0
					)
				]
			),
			//KIDS
			Song(
				file: "KIDS",
				root: "RADIO_02_POP/kids/",
				labels: [
					Label(
						artist: "ROBBIE WILLIAMS & KYLIE MINOGUE",
						title: "Kids",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "KIDS_01",
						delay: 8.0
					),
					Intro(
						file: "KIDS_02",
						delay: 8.0
					)
				]
			),
			//LADY_HEAR_ME_TONIGHT
			Song(
				file: "LADY_HEAR_ME_TONIGHT",
				root: "RADIO_02_POP/lady_hear_me_tonight/",
				labels: [
					Label(
						artist: "MODJO",
						title: "Lady (Hear Me Tonight)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LADY_HEAR_ME_TONIGHT_01",
						delay: 8.0
					),
					Intro(
						file: "LADY_HEAR_ME_TONIGHT_02",
						delay: 8.0
					)
				]
			),
			//LETS_GO_ALL_THE_WAY
			Song(
				file: "LETS_GO_ALL_THE_WAY",
				root: "RADIO_02_POP/lets_go_all_the_way/",
				labels: [
					Label(
						artist: "SLY FOX",
						title: "Let's Go All The Way",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LETS_GO_ALL_THE_WAY_01",
						delay: 8.0
					),
					Intro(
						file: "LETS_GO_ALL_THE_WAY_02",
						delay: 8.0
					)
				]
			),
			//LIVING_IN_A_BOX
			Song(
				file: "LIVING_IN_A_BOX",
				root: "RADIO_02_POP/living_in_a_box/",
				labels: [
					Label(
						artist: "LIVING IN A BOX",
						title: "Living In A Box",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LIVING_IN_A_BOX_01",
						delay: 8.0
					),
					Intro(
						file: "LIVING_IN_A_BOX_02",
						delay: 8.0
					)
				]
			),
			//ME_AND_YOU
			Song(
				file: "ME_AND_YOU",
				root: "RADIO_02_POP/me_and_you/",
				labels: [
					Label(
						artist: "CASSIE",
						title: "Me & U",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ME_AND_YOU_01",
						delay: 8.0
					),
					Intro(
						file: "ME_AND_YOU_02",
						delay: 8.0
					)
				]
			),
			//MEET_ME_HALFWAY
			Song(
				file: "MEET_ME_HALFWAY",
				root: "RADIO_02_POP/meet_me_halfway/",
				labels: [
					Label(
						artist: "THE BLACK EYED PEAS",
						title: "Meet Me Halfway",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MEET_ME_HALFWAY_01",
						delay: 8.0
					),
					Intro(
						file: "MEET_ME_HALFWAY_02",
						delay: 8.0
					)
				]
			),
			//MIDNIGHT_CITY
			Song(
				file: "MIDNIGHT_CITY",
				root: "RADIO_02_POP/midnight_city/",
				labels: [
					Label(
						artist: "M83",
						title: "Midnight City",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MIDNIGHT_CITY_01",
						delay: 8.0
					),
					Intro(
						file: "MIDNIGHT_CITY_02",
						delay: 8.0
					)
				]
			),
			//MOVES_LIKE_JAGGER
			Song(
				file: "MOVES_LIKE_JAGGER",
				root: "RADIO_02_POP/moves_like_jagger/",
				labels: [
					Label(
						artist: "MAROON 5",
						title: "Moves Like Jagger (feat. Christina Aguilera)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MOVES_LIKE_JAGGER_01",
						delay: 8.0
					),
					Intro(
						file: "MOVES_LIKE_JAGGER_02",
						delay: 8.0
					)
				]
			),
			//MUSIC_SOUNDS_BETTER_WITH_YOU
			Song(
				file: "MUSIC_SOUNDS_BETTER_WITH_YOU",
				root: "RADIO_02_POP/music_sounds_better_with_you/",
				labels: [
					Label(
						artist: "STARDUST",
						title: "Music Sounds Better With You",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MUSIC_SOUNDS_BETTER_WITH_YOU_01",
						delay: 8.0
					),
					Intro(
						file: "MUSIC_SOUNDS_BETTER_WITH_YOU_02",
						delay: 8.0
					)
				]
			),
			//NEW_SENSATION
			Song(
				file: "NEW_SENSATION",
				root: "RADIO_02_POP/new_sensation/",
				labels: [
					Label(
						artist: "INXS",
						title: "New Sensation",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NEW_SENSATION_01",
						delay: 8.0
					),
					Intro(
						file: "NEW_SENSATION_02",
						delay: 8.0
					)
				]
			),
			//ON_OUR_OWN
			Song(
				file: "ON_OUR_OWN",
				root: "RADIO_02_POP/on_our_own/",
				labels: [
					Label(
						artist: "BOBBY BROWN",
						title: "On Our Own",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ON_OUR_OWN_01",
						delay: 8.0
					),
					Intro(
						file: "ON_OUR_OWN_02",
						delay: 8.0
					)
				]
			),
			//ONE_THING
			Song(
				file: "ONE_THING",
				root: "RADIO_02_POP/one_thing/",
				labels: [
					Label(
						artist: "AMERIE",
						title: "1 Thing",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ONE_THING_01",
						delay: 8.0
					),
					Intro(
						file: "ONE_THING_02",
						delay: 8.0
					)
				]
			),
			//ONLY_GIRL_IN_THE_WORLD
			Song(
				file: "ONLY_GIRL_IN_THE_WORLD",
				root: "RADIO_02_POP/only_girl_in_the_world/",
				labels: [
					Label(
						artist: "RIHANNA",
						title: "Only Girl (In The World)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ONLY_GIRL_IN_THE_WORLD_01",
						delay: 8.0
					),
					Intro(
						file: "ONLY_GIRL_IN_THE_WORLD_02",
						delay: 8.0
					)
				]
			),
			//PROMISES_PROMISES
			Song(
				file: "PROMISES_PROMISES",
				root: "RADIO_02_POP/promises_promises/",
				labels: [
					Label(
						artist: "NAKED EYES",
						title: "Promises, Promises",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "PROMISES_PROMISES_01",
						delay: 8.0
					),
					Intro(
						file: "PROMISES_PROMISES_02",
						delay: 8.0
					)
				]
			),
			//PURE_SHORES
			Song(
				file: "PURE_SHORES",
				root: "RADIO_02_POP/pure_shores/",
				labels: [
					Label(
						artist: "ALL SAINTS",
						title: "Pure Shores",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "PURE_SHORES_01",
						delay: 8.0
					),
					Intro(
						file: "PURE_SHORES_02",
						delay: 8.0
					)
				]
			),
			//RYTHM_OF_THE_NIGHT
			Song(
				file: "RYTHM_OF_THE_NIGHT",
				root: "RADIO_02_POP/rythm_of_the_night/",
				labels: [
					Label(
						artist: "CORONA",
						title: "Rythm Of The Night",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "RYTHM_OF_THE_NIGHT_01",
						delay: 8.0
					),
					Intro(
						file: "RYTHM_OF_THE_NIGHT_02",
						delay: 8.0
					)
				]
			),
			//SCANDALOUS
			Song(
				file: "SCANDALOUS",
				root: "RADIO_02_POP/scandalous/",
				labels: [
					Label(
						artist: "MIS-TEEQ",
						title: "Scandalous",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SCANDALOUS_01",
						delay: 8.0
					),
					Intro(
						file: "SCANDALOUS_02",
						delay: 8.0
					),
					Intro(
						file: "SCANDALOUS_03",
						delay: 8.0
					)
				]
			),
			//SEND_ME_AN_ANGEL
			Song(
				file: "SEND_ME_AN_ANGEL",
				root: "RADIO_02_POP/send_me_an_angel/",
				labels: [
					Label(
						artist: "REAL LIFE",
						title: "Send Me An Angel",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SIX_UNDERGROUND
			Song(
				file: "SIX_UNDERGROUND",
				root: "RADIO_02_POP/six_underground/",
				labels: [
					Label(
						artist: "SNEAKER PIMPS",
						title: "6 Underground",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SIX_UNDERGROUND_01",
						delay: 8.0
					),
					Intro(
						file: "SIX_UNDERGROUND_02",
						delay: 8.0
					)
				]
			),
			//SMALLTOWN_BOY
			Song(
				file: "SMALLTOWN_BOY",
				root: "RADIO_02_POP/smalltown_boy/",
				labels: [
					Label(
						artist: "BRONSKI BEAT",
						title: "Smalltown Boy",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SMALLTOWN_BOY_01",
						delay: 8.0
					),
					Intro(
						file: "SMALLTOWN_BOY_02",
						delay: 8.0
					)
				]
			),
			//SOMETHING_GOT_ME_STARTED_REMIX
			Song(
				file: "SOMETHING_GOT_ME_STARTED_REMIX",
				root: "RADIO_02_POP/something_got_me_started_remix/",
				labels: [
					Label(
						artist: "SIMPLY RED",
						title: "Something Got Me Started (Hurley's House Remix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "0x12C8ED94",
						delay: 8.0
					),
					Intro(
						file: "0x00934929",
						delay: 8.0
					)
				]
			),
			//TAPE_LOOP
			Song(
				file: "TAPE_LOOP",
				root: "RADIO_02_POP/tape_loop/",
				labels: [
					Label(
						artist: "MORCHEEBA",
						title: "Tape Loop",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TAPE_LOOP_01",
						delay: 8.0
					),
					Intro(
						file: "TAPE_LOOP_02",
						delay: 8.0
					),
					Intro(
						file: "TAPE_LOOP_03",
						delay: 8.0
					),
					Intro(
						file: "TAPE_LOOP_04",
						delay: 8.0
					)
				]
			),
			//TELL_TO_MY_HEART
			Song(
				file: "TELL_TO_MY_HEART",
				root: "RADIO_02_POP/tell_to_my_heart/",
				labels: [
					Label(
						artist: "TAYLOR DAYNE",
						title: "Tell It To My Heart",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TELL_IT_TO_MY_HEART_01",
						delay: 8.0
					),
					Intro(
						file: "TELL_IT_TO_MY_HEART_02",
						delay: 8.0
					)
				]
			),
			//TENNIS_COURT
			Song(
				file: "TENNIS_COURT",
				root: "RADIO_02_POP/tennis_court/",
				labels: [
					Label(
						artist: "LORDE",
						title: "Tennis Court",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TENNIS_COURT_01",
						delay: 8.0
					),
					Intro(
						file: "TENNIS_COURT_02",
						delay: 8.0
					)
				]
			),
			//THE_TIME_IS_NOW
			Song(
				file: "THE_TIME_IS_NOW",
				root: "RADIO_02_POP/the_time_is_now/",
				labels: [
					Label(
						artist: "MOLOKO",
						title: "The Time Is Now",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_TIME_IS_NOW_01",
						delay: 8.0
					),
					Intro(
						file: "THE_TIME_IS_NOW_02",
						delay: 8.0
					),
					Intro(
						file: "THE_TIME_IS_NOW_03",
						delay: 8.0
					),
					Intro(
						file: "THE_TIME_IS_NOW_04",
						delay: 8.0
					)
				]
			),
			//WAIT
			Song(
				file: "WAIT",
				root: "RADIO_02_POP/wait/",
				labels: [
					Label(
						artist: "BLOW MONKEYS FEAT. KYM MAZELLE",
						title: "Wait",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WAIT_01",
						delay: 8.0
					),
					Intro(
						file: "WAIT_02",
						delay: 8.0
					)
				]
			),
			//WEST_END_GIRLS
			Song(
				file: "WEST_END_GIRLS",
				root: "RADIO_02_POP/west_end_girls/",
				labels: [
					Label(
						artist: "PET SHOP BOYS",
						title: "West End Girls",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WEST_END_GIRLS_01",
						delay: 8.0
					),
					Intro(
						file: "WEST_END_GIRLS_02",
						delay: 8.0
					)
				]
			),
			//WITH_EVERY_HEARTBEAT
			Song(
				file: "WITH_EVERY_HEARTBEAT",
				root: "RADIO_02_POP/with_every_heartbeat/",
				labels: [
					Label(
						artist: "ROBYN",
						title: "With Every Heartbeat (With Kleerup)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WITH_EVERY_HEARTBEAT_01",
						delay: 8.0
					),
					Intro(
						file: "WITH_EVERY_HEARTBEAT_02",
						delay: 8.0
					)
				]
			),
			//WORK
			Song(
				file: "WORK",
				root: "RADIO_02_POP/work/",
				labels: [
					Label(
						artist: "KELLY ROWLAND",
						title: "Work (Freemasons Mix)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WORK_01",
						delay: 8.0
					),
					Intro(
						file: "WORK_02",
						delay: 8.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29"],
		time: [
			"EVENING": ["01","02","03","04","05","06"],
			"MORNING": ["01","02","03","04","05","06"]
		],
		to: [
			"AD": ["01","02","03","04","05","06"],
			"NEWS": ["01","02","03","04","05","06"]
		]
	),
	
	// MARK: Radio Los Santos
	RadioStation(
		index: 21,
		number: 3,
		name: "Radio Los Santos",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 3,
			column: 3
		),
		randomize: true,
		rotate: false,
		root: "RADIO_03_HIPHOP_NEW",
		songs: [
			//ADHD
			Song(
				file: "ADHD",
				root: "RADIO_03_HIPHOP_NEW/adhd/",
				labels: [
					Label(
						artist: "KENDRICK LAMAR",
						title: "A.D.H.D.",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ADHD_01",
						delay: 8.0
					),
					Intro(
						file: "ADHD_02",
						delay: 8.0
					)
				]
			),
			//ALI_BOMAYE
			Song(
				file: "ALI_BOMAYE",
				root: "RADIO_03_HIPHOP_NEW/ali_bomaye/",
				labels: [
					Label(
						artist: "GAME FEAT. 2 CHAINZ & RICK ROSS",
						title: "Ali Bomaye",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ALI_BOMAYE_01",
						delay: 8.0
					),
					Intro(
						file: "ALI_BOMAYE_02",
						delay: 8.0
					)
				]
			),
			//BAD_NEWS
			Song(
				file: "BAD_NEWS",
				root: "RADIO_03_HIPHOP_NEW/bad_news/",
				labels: [
					Label(
						artist: "DANNY BROWN & ACTION BRONSON",
						title: "Bad News",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BAD_NEWS_01",
						delay: 8.0
					),
					Intro(
						file: "BAD_NEWS_02",
						delay: 8.0
					)
				]
			),
			//BASSHEADS
			Song(
				file: "BASSHEADS",
				root: "RADIO_03_HIPHOP_NEW/bassheads/",
				labels: [
					Label(
						artist: "GANGRENE",
						title: "Bassheads",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BASSHEADS_01",
						delay: 8.0
					),
					Intro(
						file: "BASSHEADS_02",
						delay: 8.0
					)
				]
			),
			//BUGATTI
			Song(
				file: "BUGATTI",
				root: "RADIO_03_HIPHOP_NEW/bugatti/",
				labels: [
					Label(
						artist: "ACE HOOD FEAT. FUTURE & RICK ROSS",
						title: "Bugatti",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BUGATTI_01",
						delay: 8.0
					),
					Intro(
						file: "BUGATTI_02",
						delay: 8.0
					)
				]
			),
			//COLLARD_GREENS
			Song(
				file: "COLLARD_GREENS",
				root: "RADIO_03_HIPHOP_NEW/collard_greens/",
				labels: [
					Label(
						artist: "SCHOOLBOY Q FEAT. KENDRICK LAMAR",
						title: "Collard Greens",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//DO_IT_BIG
			Song(
				file: "DO_IT_BIG",
				root: "RADIO_03_HIPHOP_NEW/do_it_big/",
				labels: [
					Label(
						artist: "PROBLEM & IAMSU! FEAT. BAD LUCC & SAGE THE GEMINI",
						title: "Do It Big",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DO_IT_BIG_01",
						delay: 8.0
					),
					Intro(
						file: "DO_IT_BIG_02",
						delay: 8.0
					)
				]
			),
			//EASILY
			Song(
				file: "EASILY",
				root: "RADIO_03_HIPHOP_NEW/easily/",
				labels: [
					Label(
						artist: "CHUCK INGLISH",
						title: "Came Thru/Easily feat Mac Miller and Ab-Soul",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "EASILY_01",
						delay: 8.0
					),
					Intro(
						file: "EASILY_02",
						delay: 8.0
					)
				]
			),
			//EVERYDAY
			Song(
				file: "EVERYDAY",
				root: "RADIO_03_HIPHOP_NEW/everyday/",
				labels: [
					Label(
						artist: "TROUBLE FT GUCCI MANE",
						title: "Everyday",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "EVERYDAY_01",
						delay: 8.0
					),
					Intro(
						file: "EVERYDAY_02",
						delay: 8.0
					)
				]
			),
			//HOLD_UP
			Song(
				file: "HOLD_UP",
				root: "RADIO_03_HIPHOP_NEW/hold_up/",
				labels: [
					Label(
						artist: "MARION BAND$ FEAT. NIPSEY HUSSLE",
						title: "Hold Up",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//HOOD_GONE_LOVE_IT
			Song(
				file: "HOOD_GONE_LOVE_IT",
				root: "RADIO_03_HIPHOP_NEW/hood_gone_love_it/",
				labels: [
					Label(
						artist: "JAY ROCK FEAT. KENDRICK LAMAR",
						title: "Hood Gone Love It",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HOOD_GONE_LOVE_IT_01",
						delay: 8.0
					),
					Intro(
						file: "HOOD_GONE_LOVE_IT_02",
						delay: 8.0
					)
				]
			),
			//HOW_IT_WAS
			Song(
				file: "HOW_IT_WAS",
				root: "RADIO_03_HIPHOP_NEW/how_it_was/",
				labels: [
					Label(
						artist: "FUTURE",
						title: "How It Was",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HOW_IT_WAS_01",
						delay: 8.0
					),
					Intro(
						file: "HOW_IT_WAS_02",
						delay: 8.0
					)
				]
			),
			//HUNNID_STAX
			Song(
				file: "HUNNID_STAX",
				root: "RADIO_03_HIPHOP_NEW/hunnid_stax/",
				labels: [
					Label(
						artist: "AB-SOUL FEAT. SCHOOLBOY Q",
						title: "Hunnid Stax",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "HUNNID_STAX_01",
						delay: 8.0
					),
					Intro(
						file: "HUNNID_STAX_02",
						delay: 8.0
					)
				]
			),
			//I_CANT_WAIT_SCOOTER
			Song(
				file: "I_CANT_WAIT_SCOOTER",
				root: "RADIO_03_HIPHOP_NEW/i_cant_wait_scooter/",
				labels: [
					Label(
						artist: "YOUNG SCOOTER FT TRINIDAD JAMES",
						title: "I Can't Wait",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_CANT_WAIT_SCOOTER_01",
						delay: 8.0
					),
					Intro(
						file: "I_CANT_WAIT_SCOOTER_02",
						delay: 8.0
					)
				]
			),
			//ILLUMINATE
			Song(
				file: "ILLUMINATE",
				root: "RADIO_03_HIPHOP_NEW/illuminate/",
				labels: [
					Label(
						artist: "AB-SOUL FT. KENDRICK LAMAR",
						title: "ILLuminate",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ILLUMINATE_01",
						delay: 8.0
					),
					Intro(
						file: "ILLUMINATE_02",
						delay: 8.0
					)
				]
			),
			//IM_A_REAL_ONE
			Song(
				file: "IM_A_REAL_ONE",
				root: "RADIO_03_HIPHOP_NEW/im_a_real_one/",
				labels: [
					Label(
						artist: "YG",
						title: "I'm A Real 1",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IM_A_REAL_ONE_01",
						delay: 8.0
					),
					Intro(
						file: "IM_A_REAL_ONE_02",
						delay: 8.0
					)
				]
			),
			//KUSH_COMA
			Song(
				file: "KUSH_COMA",
				root: "RADIO_03_HIPHOP_NEW/kush_coma/",
				labels: [
					Label(
						artist: "DANNY BROWN FEAT. A$AP ROCKY & ZELOOPERZ",
						title: "Kush Coma",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "KUSH_COMA_01",
						delay: 8.0
					),
					Intro(
						file: "KUSH_COMA_02",
						delay: 8.0
					)
				]
			),
			//LIFE_OF_A_MACK
			Song(
				file: "LIFE_OF_A_MACK",
				root: "RADIO_03_HIPHOP_NEW/life_of_a_mack/",
				labels: [
					Label(
						artist: "100S",
						title: "Life Of A Mack",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LIFE_OF_A_MACK_01",
						delay: 8.0
					),
					Intro(
						file: "LIFE_OF_A_MACK_02",
						delay: 8.0
					),
					Intro(
						file: "LIFE_OF_A_MACK_03",
						delay: 8.0
					)
				]
			),
			//MILLIONS
			Song(
				file: "MILLIONS",
				root: "RADIO_03_HIPHOP_NEW/millions/",
				labels: [
					Label(
						artist: "SKEME",
						title: "Millions",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MILLIONS_01",
						delay: 8.0
					),
					Intro(
						file: "MILLIONS_02",
						delay: 8.0
					)
				]
			),
			//R_CALI
			Song(
				file: "R_CALI",
				root: "RADIO_03_HIPHOP_NEW/r_cali/",
				labels: [
					Label(
						artist: "A$AP ROCKY",
						title: "R-Cali",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "R_CALI_01",
						delay: 8.0
					),
					Intro(
						file: "R_CALI_02",
						delay: 8.0
					),
					Intro(
						file: "R_CALI_03",
						delay: 8.0
					)
				]
			),
			//RELAXIN
			Song(
				file: "RELAXIN",
				root: "RADIO_03_HIPHOP_NEW/relaxin/",
				labels: [
					Label(
						artist: "G-SIDE FT G-MANE",
						title: "Relaxin'",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "RELAXIN_01",
						delay: 8.0
					),
					Intro(
						file: "RELAXIN_02",
						delay: 8.0
					)
				]
			),
			//SAY_THAT_THEN
			Song(
				file: "SAY_THAT_THEN",
				root: "RADIO_03_HIPHOP_NEW/say_that_then/",
				labels: [
					Label(
						artist: "PROBLEM FEAT. GLASSES MALONE",
						title: "Say That Then",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SAY_THAT_THEN_01",
						delay: 8.0
					),
					Intro(
						file: "SAY_THAT_THEN_02",
						delay: 8.0
					)
				]
			),
			//SELLIN_DOPE
			Song(
				file: "SELLIN_DOPE",
				root: "RADIO_03_HIPHOP_NEW/sellin_dope/",
				labels: [
					Label(
						artist: "FREDDIE GIBBS & MIKE DEAN",
						title: "Sellin' Dope",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SLOW_DOWN
			Song(
				file: "SLOW_DOWN",
				root: "RADIO_03_HIPHOP_NEW/slow_down/",
				labels: [
					Label(
						artist: "CLYDE CARSON FEAT. THE TEAM",
						title: "Slow Down",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SLOW_DOWN_01",
						delay: 8.0
					),
					Intro(
						file: "SLOW_DOWN_02",
						delay: 8.0
					)
				]
			),
			//SMOKIN_AND_RIDIN
			Song(
				file: "SMOKIN_AND_RIDIN",
				root: "RADIO_03_HIPHOP_NEW/smokin_and_ridin/",
				labels: [
					Label(
						artist: "BJ THE CHICAGO KID FEAT. FREDDIE GIBBS & PROBLEM",
						title: "Smoke And Ride",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SMOKIN_AND_RIDIN_01",
						delay: 8.0
					),
					Intro(
						file: "SMOKIN_AND_RIDIN_02",
						delay: 8.0
					),
					Intro(
						file: "SMOKIN_AND_RIDIN_03",
						delay: 8.0
					)
				]
			),
			//STILL_LIVIN
			Song(
				file: "STILL_LIVIN",
				root: "RADIO_03_HIPHOP_NEW/still_livin/",
				labels: [
					Label(
						artist: "FREDDIE GIBBS",
						title: "Still Livin'",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "STILL_LIVIN_01",
						delay: 8.0
					),
					Intro(
						file: "STILL_LIVIN_02",
						delay: 8.0
					)
				]
			),
			//SWIMMING_POOLS
			Song(
				file: "SWIMMING_POOLS",
				root: "RADIO_03_HIPHOP_NEW/swimming_pools/",
				labels: [
					Label(
						artist: "KENDRICK LAMAR",
						title: "Swimming Pools (Drank)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SWIMMING_POOLS_01",
						delay: 8.0
					),
					Intro(
						file: "SWIMMING_POOLS_02",
						delay: 8.0
					)
				]
			),
			//TOO_HOOD
			Song(
				file: "TOO_HOOD",
				root: "RADIO_03_HIPHOP_NEW/too_hood/",
				labels: [
					Label(
						artist: "GUCCI MANE FEAT. CIARA",
						title: "Too Hard",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "TOO_HOOD_01",
						delay: 8.0
					),
					Intro(
						file: "TOO_HOOD_02",
						delay: 8.0
					)
				]
			),
			//UPPER_ECHELON
			Song(
				file: "UPPER_ECHELON",
				root: "RADIO_03_HIPHOP_NEW/upper_echelon/",
				labels: [
					Label(
						artist: "TRAVI$ SCOTT",
						title: "Upper Echelon feat T.I. and 2 Chainz",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "UPPER_ECHELON_01",
						delay: 8.0
					),
					Intro(
						file: "UPPER_ECHELON_02",
						delay: 8.0
					)
				]
			),
			//WORK_FERG
			Song(
				file: "WORK_FERG",
				root: "RADIO_03_HIPHOP_NEW/work_ferg/",
				labels: [
					Label(
						artist: "A$AP FERG",
						title: "Work",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WORK_FERG_01",
						delay: 8.0
					)
				]
			),
			//WORK_YOUNG_SCOOTER
			Song(
				file: "WORK_YOUNG_SCOOTER",
				root: "RADIO_03_HIPHOP_NEW/work_young_scooter/",
				labels: [
					Label(
						artist: "YOUNG SCOOTER FEAT. GUCCI MANE",
						title: "Work",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WORK_YOUNG_SCOOTER_01",
						delay: 8.0
					),
					Intro(
						file: "WORK_YOUNG_SCOOTER_02",
						delay: 8.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21"],
		time: [
			"EVENING": ["01","02","03","04","05","06"],
			"MORNING": ["01","02","03","04","05"]
		],
		to: [
			"AD": ["01","02","03","04","05","06"],
			"NEWS": ["01","02","03","04","05","06"]
		]
	),
	
	// MARK: Channel X
	RadioStation(
		index: 22,
		number: 4,
		name: "Channel X",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 3,
			column: 1
		),
		randomize: true,
		rotate: false,
		root: "RADIO_04_PUNK",
		songs: [
			//AMOEBA
			Song(
				file: "AMOEBA",
				root: "RADIO_04_PUNK/amoeba/",
				labels: [
					Label(
						artist: "THE ADOLESCENTS",
						title: "Amoeba",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "AMOEBA_01",
						delay: 5.0
					),
					Intro(
						file: "AMOEBA_02",
						delay: 5.0
					)
				]
			),
			//BLOWN_AWAY
			Song(
				file: "BLOWN_AWAY",
				root: "RADIO_04_PUNK/blown_away/",
				labels: [
					Label(
						artist: "YOUTH BRIGADE",
						title: "Blown Away",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BLOWN_AWAY_01",
						delay: 5.0
					),
					Intro(
						file: "BLOWN_AWAY_02",
						delay: 5.0
					)
				]
			),
			//BORED_OF_YOU
			Song(
				file: "BORED_OF_YOU",
				root: "RADIO_04_PUNK/bored_of_you/",
				labels: [
					Label(
						artist: "AGENT ORANGE",
						title: "Bored Of You",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BORED_OF_YOU_01",
						delay: 5.0
					),
					Intro(
						file: "BORED_OF_YOU_02",
						delay: 5.0
					)
				]
			),
			//DONT_NEED_SOCIETY
			Song(
				file: "DONT_NEED_SOCIETY",
				root: "RADIO_04_PUNK/dont_need_society/",
				labels: [
					Label(
						artist: "D.R.I.",
						title: "I Don't Need Society",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DONT_NEED_SOCIETY_01",
						delay: 5.0
					),
					Intro(
						file: "DONT_NEED_SOCIETY_02",
						delay: 5.0
					)
				]
			),
			//DONT_PUSH_ME_AROUND
			Song(
				file: "DONT_PUSH_ME_AROUND",
				root: "RADIO_04_PUNK/dont_push_me_around/",
				labels: [
					Label(
						artist: "THE ZEROS",
						title: "Don't Push Me Around",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "DONT_PUSH_ME_AROUND_01",
						delay: 5.0
					),
					Intro(
						file: "DONT_PUSH_ME_AROUND_02",
						delay: 5.0
					)
				]
			),
			//JOHN_WAYNE
			Song(
				file: "JOHN_WAYNE",
				root: "RADIO_04_PUNK/john_wayne/",
				labels: [
					Label(
						artist: "MDC",
						title: "John Wayne Was A Nazi",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "JOHN_WAYNE_01",
						delay: 5.0
					),
					Intro(
						file: "JOHN_WAYNE_02",
						delay: 5.0
					)
				]
			),
			//LEXICON_DEVIL
			Song(
				file: "LEXICON_DEVIL",
				root: "RADIO_04_PUNK/lexicon_devil/",
				labels: [
					Label(
						artist: "THE GERMS",
						title: "Lexicon Devil",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LEXICON_DEVIL_01",
						delay: 5.0
					),
					Intro(
						file: "LEXICON_DEVIL_02",
						delay: 5.0
					)
				]
			),
			//LIFE_OF_CRIME
			Song(
				file: "LIFE_OF_CRIME",
				root: "RADIO_04_PUNK/life_of_crime/",
				labels: [
					Label(
						artist: "THE WEIRDOS",
						title: "Life Of Crime",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//LINDA_BLAIR
			Song(
				file: "LINDA_BLAIR",
				root: "RADIO_04_PUNK/linda_blair/",
				labels: [
					Label(
						artist: "REDD KROSS",
						title: "Linda Blair",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LINDA_BLAIR_01",
						delay: 5.0
					),
					Intro(
						file: "LINDA_BLAIR_02",
						delay: 5.0
					)
				]
			),
			//LOS_ANGELES
			Song(
				file: "LOS_ANGELES",
				root: "RADIO_04_PUNK/los_angeles/",
				labels: [
					Label(
						artist: "X",
						title: "Los Angeles",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LOS_ANGELES_01",
						delay: 5.0
					),
					Intro(
						file: "LOS_ANGELES_02",
						delay: 5.0
					)
				]
			),
			//MY_WAR
			Song(
				file: "MY_WAR",
				root: "RADIO_04_PUNK/my_war/",
				labels: [
					Label(
						artist: "BLACK FLAG",
						title: "My War",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MY_WAR_01",
						delay: 5.0
					),
					Intro(
						file: "MY_WAR_02",
						delay: 5.0
					)
				]
			),
			//PERVERT
			Song(
				file: "PERVERT",
				root: "RADIO_04_PUNK/pervert/",
				labels: [
					Label(
						artist: "THE DESCENDENTS",
						title: "Pervert",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//ROCK_HOUSE
			Song(
				file: "ROCK_HOUSE",
				root: "RADIO_04_PUNK/rock_house/",
				labels: [
					Label(
						artist: "CIRCLE JERKS",
						title: "Rock House",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SILENT_MAJORITY
			Song(
				file: "SILENT_MAJORITY",
				root: "RADIO_04_PUNK/silent_majority/",
				labels: [
					Label(
						artist: "T.S.O.L.",
						title: "Abolish Government/Silent Majority",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//SUBLIMINAL
			Song(
				file: "SUBLIMINAL",
				root: "RADIO_04_PUNK/subliminal/",
				labels: [
					Label(
						artist: "SUICIDAL TENDENCIES",
						title: "Subliminal",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SUBLIMINAL_01",
						delay: 5.0
					),
					Intro(
						file: "SUBLIMINAL_02",
						delay: 5.0
					)
				]
			),
			//THE_ENEMY
			Song(
				file: "THE_ENEMY",
				root: "RADIO_04_PUNK/the_enemy/",
				labels: [
					Label(
						artist: "D.O.A.",
						title: "The Enemy",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_ENEMY_01",
						delay: 5.0
					),
					Intro(
						file: "THE_ENEMY_02",
						delay: 5.0
					)
				]
			),
			//THE_MOUTH_DONT_STOP
			Song(
				file: "THE_MOUTH_DONT_STOP",
				root: "RADIO_04_PUNK/the_mouth_dont_stop/",
				labels: [
					Label(
						artist: "FEAR",
						title: "The Mouth Don't Stop (The Trouble With Women Is)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_MOUTH_DONT_STOP_01",
						delay: 5.0
					),
					Intro(
						file: "THE_MOUTH_DONT_STOP_02",
						delay: 5.0
					)
				]
			),
			//WHATS_NEXT
			Song(
				file: "WHATS_NEXT",
				root: "RADIO_04_PUNK/whats_next/",
				labels: [
					Label(
						artist: "OFF!",
						title: "What's Next?",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WHATS_NEXT_01",
						delay: 5.0
					),
					Intro(
						file: "WHATS_NEXT_02",
						delay: 5.0
					),
					Intro(
						file: "WHATS_NEXT_03",
						delay: 5.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		sid: ["01","02","03","04","05","06","07","08","09","10"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12"],
		time: [
			"EVENING": ["01","02","03"],
			"MORNING": ["01","02","03","04"]
		],
		to: [
			"AD": ["01","02","03","04","05"],
			"NEWS": ["01","02","03","04"]
		]
	),
	
	// MARK: WCTR
	RadioStation(
		index: 23,
		number: 5,
		name: "WCTR",
		image: "gta_radio_stations_texture02_512",
		imagePosition: Position(
			row: 2,
			column: 1
		),
		randomize: false,
		rotate: true,
		root: "RADIO_05_TALK_01",
		songs: [
			//MONO_CHAKRA_ATTACK_PART_1
			Song(
				file: "MONO_CHAKRA_ATTACK_PART_1",
				root: "RADIO_05_TALK_01/mono_chakra_attack_part_1/",
				labels: [
					Label(
						artist: "CHAKRA ATTACK",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONO_CHATTERSPHERE
			Song(
				file: "MONO_CHATTERSPHERE",
				root: "RADIO_05_TALK_01/mono_chattersphere/",
				labels: [
					Label(
						artist: "CHATTERSPHERE",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONO_DCHAKRA_ATTACK_PART_2
			Song(
				file: "MONO_DCHAKRA_ATTACK_PART_2",
				root: "RADIO_05_TALK_01/mono_dchakra_attack_part_2/",
				labels: [
					Label(
						artist: "CHAKRA ATTACK",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MONO_FERNANDO_SHOW_1
			Song(
				file: "MONO_FERNANDO_SHOW_1",
				root: "RADIO_05_TALK_01/mono_fernando_show_1/",
				labels: [
					Label(
						artist: "The Fernando Show",
						title: "",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: ["01","02","03","04","05","06","07","08","09","10","11"],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: Rebel Radio
	RadioStation(
		index: 24,
		number: 6,
		name: "Rebel Radio",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 1,
			column: 1
		),
		randomize: true,
		rotate: false,
		root: "RADIO_06_COUNTRY",
		songs: [
			//ARE_YOU_SURE_HANK
			Song(
				file: "ARE_YOU_SURE_HANK",
				root: "RADIO_06_COUNTRY/are_you_sure_hank/",
				labels: [
					Label(
						artist: "WAYLON JENNINGS",
						title: "Are You Sure Hank Done It This Way",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "ARE_YOU_SURE_HANK_01",
						delay: 5.0
					)
				]
			),
			//CANT_HARDLY_STAND
			Song(
				file: "CANT_HARDLY_STAND",
				root: "RADIO_06_COUNTRY/cant_hardly_stand/",
				labels: [
					Label(
						artist: "CHARLIE FEATHERS",
						title: "Can't Hardly Stand It",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CANT_HARDLY_STAND_01",
						delay: 5.0
					),
					Intro(
						file: "CANT_HARDLY_STAND_02",
						delay: 5.0
					)
				]
			),
			//CONVOY
			Song(
				file: "CONVOY",
				root: "RADIO_06_COUNTRY/convoy/",
				labels: [
					Label(
						artist: "C.W. MCCALL",
						title: "Convoy",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CONVOY_01",
						delay: 5.0
					),
					Intro(
						file: "CONVOY_02",
						delay: 5.0
					),
					Intro(
						file: "CONVOY_03",
						delay: 5.0
					)
				]
			),
			//CRAZY_ARMS
			Song(
				file: "CRAZY_ARMS",
				root: "RADIO_06_COUNTRY/crazy_arms/",
				labels: [
					Label(
						artist: "RAY PRICE",
						title: "Crazy Arms",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//DIPPIN_SNUFF
			Song(
				file: "DIPPIN_SNUFF",
				root: "RADIO_06_COUNTRY/dippin_snuff/",
				labels: [
					Label(
						artist: "MARVIN JACKSON",
						title: "Dippin' Snuff",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//DIVORCE
			Song(
				file: "DIVORCE",
				root: "RADIO_06_COUNTRY/divorce/",
				labels: [
					Label(
						artist: "TAMMY WYNETTE",
						title: "D-I-V-O-R-C-E",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//GET_OUTTA_MY_CAR
			Song(
				file: "GET_OUTTA_MY_CAR",
				root: "RADIO_06_COUNTRY/get_outta_my_car/",
				labels: [
					Label(
						artist: "HASIL ADKINS",
						title: "Get Outta My Car",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GET_OUTTA_MY_CAR_01",
						delay: 5.0
					),
					Intro(
						file: "GET_OUTTA_MY_CAR_02",
						delay: 5.0
					),
					Intro(
						file: "GET_OUTTA_MY_CAR_03",
						delay: 5.0
					)
				]
			),
			//GET_WITH_IT
			Song(
				file: "GET_WITH_IT",
				root: "RADIO_06_COUNTRY/get_with_it/",
				labels: [
					Label(
						artist: "CHARLIE FEATHERS",
						title: "Get With It",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//HIGHWAY_MAN
			Song(
				file: "HIGHWAY_MAN",
				root: "RADIO_06_COUNTRY/highway_man/",
				labels: [
					Label(
						artist: "THE HIGHWAYMEN",
						title: "Highwayman",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//I_AINT_LIVING_LONG_LIKE_THIS
			Song(
				file: "I_AINT_LIVING_LONG_LIKE_THIS",
				root: "RADIO_06_COUNTRY/i_aint_living_long_like_this/",
				labels: [
					Label(
						artist: "WAYLON JENNINGS",
						title: "I Ain't Living Long Like This",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "I_AINT_LIVING_LONG_LIKE_THIS_01",
						delay: 5.0
					)
				]
			),
			//IF_WANT_TO_GET_HEAVEN
			Song(
				file: "IF_WANT_TO_GET_HEAVEN",
				root: "RADIO_06_COUNTRY/if_want_to_get_heaven/",
				labels: [
					Label(
						artist: "OZARK MOUNTAIN DAREDEVILS",
						title: "If You Wanna Get To Heaven",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IF_WANT_TO_GET_HEAVEN_01",
						delay: 5.0
					),
					Intro(
						file: "IF_WANT_TO_GET_HEAVEN_02",
						delay: 5.0
					)
				]
			),
			//IT_DONT_HURT_ANYMORE
			Song(
				file: "IT_DONT_HURT_ANYMORE",
				root: "RADIO_06_COUNTRY/it_dont_hurt_anymore/",
				labels: [
					Label(
						artist: "HANK THOMPSON",
						title: "It Don't Hurt Anymore",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IT_DONT_HURT_ANYMORE_01",
						delay: 5.0
					),
					Intro(
						file: "IT_DONT_HURT_ANYMORE_02",
						delay: 5.0
					)
				]
			),
			//IT_WONT_BE_LONG_HATING_YOU
			Song(
				file: "IT_WONT_BE_LONG_HATING_YOU",
				root: "RADIO_06_COUNTRY/it_wont_be_long_hating_you/",
				labels: [
					Label(
						artist: "JOHNNY PAYCHECK",
						title: "It Won't Be Long (And I'll Be Hating You)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "IT_WONT_BE_LONG_HATING_YOU_01",
						delay: 5.0
					),
					Intro(
						file: "IT_WONT_BE_LONG_HATING_YOU_02",
						delay: 5.0
					)
				]
			),
			//SHE_MADE_TOOTHPICKS_OUT_OF_ME
			Song(
				file: "SHE_MADE_TOOTHPICKS_OUT_OF_ME",
				root: "RADIO_06_COUNTRY/she_made_toothpicks_out_of_me/",
				labels: [
					Label(
						artist: "HOMER & JETHRO",
						title: "She Made Toothpicks Of The Timber Of My Heart",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//THE_GENERAL_LEE
			Song(
				file: "THE_GENERAL_LEE",
				root: "RADIO_06_COUNTRY/the_general_lee/",
				labels: [
					Label(
						artist: "JOHNNY CASH",
						title: "The General Lee",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_GENERAL_LEE_01",
						delay: 5.0
					),
					Intro(
						file: "THE_GENERAL_LEE_02",
						delay: 5.0
					)
				]
			),
			//WHISKEY_RIVER
			Song(
				file: "WHISKEY_RIVER",
				root: "RADIO_06_COUNTRY/whiskey_river/",
				labels: [
					Label(
						artist: "WILLIE NELSON",
						title: "Whiskey River",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WHISKEY_RIVER_01",
						delay: 5.0
					),
					Intro(
						file: "WHISKEY_RIVER_02",
						delay: 5.0
					)
				]
			),
			//YOU_TOOK_ALL_THE_RAMBLIN_OUT
			Song(
				file: "YOU_TOOK_ALL_THE_RAMBLIN_OUT",
				root: "RADIO_06_COUNTRY/you_took_all_the_ramblin_out/",
				labels: [
					Label(
						artist: "JERRY REED",
						title: "You Took All The Ramblin' Out Of Me",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "YOU_TOOK_ALL_THE_RAMBLIN_OUT_01",
						delay: 5.0
					),
					Intro(
						file: "YOU_TOOK_ALL_THE_RAMBLIN_OUT_02",
						delay: 5.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21"],
		time: [
			"EVENING": ["01","02","03","04"],
			"MORNING": ["01","02","03","04"]
		],
		to: [
			"AD": ["01","02","03","04"],
			"NEWS": ["01","02","03","04"]
		]
	),
	
	// MARK: Soulwax FM
	RadioStation(
		index: 25,
		number: 7,
		name: "Soulwax FM",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 2,
			column: 2
		),
		randomize: false,
		rotate: false,
		root: "RADIO_07_DANCE_01",
		songs: [
			//SOULWAX_FM_FINAL_MIX_
			Song(
				file: "SOULWAX_FM_FINAL_MIX_32K",
				root: "RADIO_07_DANCE_01/soulwax_fm_final_mix_32k/",
				labels: [
					Label(
						artist: "",
						title: "",
						time: 0.0
					),
					//Stock (Soulwax Remix)
					Label(
						artist: "PALMBOMEN",
						title: "Stock (Soulwax Remix)",
						time: 15.5
					),
					//Fatal Error
					Label(
						artist: "FATAL ERROR",
						title: "Fatal Error",
						time: 159.0
					),
					//Let's Beam Him Up
					Label(
						artist: "SUPERSEMPFFT",
						title: "Let's Beam Him Up",
						time: 291.0
					),
					//Mingi
					Label(
						artist: "MIM SULEMAN",
						title: "Mingi",
						time: 370.0
					),
					//The Strange Art (Inflagranti Remix)
					Label(
						artist: "FK CLUB",
						title: "The Strange Art (Inflagranti Remix)",
						time: 509.0
					),
					//El Sucu Tucu
					Label(
						artist: "MATIAS AGUAYO",
						title: "El Sucu Tucu",
						time: 639.0
					),
					//Naive Reception
					Label(
						artist: "DANIEL AVERY",
						title: "Naive Reception",
						time: 870.0
					),
					//Gabriel (Soulwax Remix)
					Label(
						artist: "JOE GODDARD",
						title: "Gabriel (Soulwax Remix)",
						time: 967.0
					),
					//Body Music (Original Mix)
					Label(
						artist: "DANIEL MALASO",
						title: "Body Music (Original Mix)",
						time: 1150.0
					),
					//Lazer Beams
					Label(
						artist: "GREEN VELVET & HARVARD BASS",
						title: "Lazer Beams",
						time: 1263.0
					),
					//Tryouts
					Label(
						artist: "ZOMBIE NATION",
						title: "Tryouts",
						time: 1395.0
					),
					//Nothing But Pleasure
					Label(
						artist: "TOM ROWLANDS",
						title: "Nothing But Pleasure",
						time: 1491.0
					),
					//Arp #1
					Label(
						artist: "JACKSON AND HIS COMPUTER BAND",
						title: "Arp #1",
						time: 1644.0
					),
					//Synrise (Soulwax Remix)
					Label(
						artist: "GOOSE",
						title: "Synrise (Soulwax Remix)",
						time: 1826.0
					),
					//Mr. Croissant Taker
					Label(
						artist: "TRANSISTORCAKE",
						title: "Mr. Croissant Taker",
						time: 1976.0
					),
					//Plush (Jaques Lu Cont Remix)
					Label(
						artist: "TIGA",
						title: "Plush (Jaques Lu Cont Remix)",
						time: 2098.0
					),
					//Shockwave (Gesaffelstein Remix)
					Label(
						artist: "THE HACKER",
						title: "Shockwave (Gesaffelstein Remix)",
						time: 2233.0
					),
					//After You (Soulwax Remix)
					Label(
						artist: "PULP",
						title: "After You (Soulwax Remix)",
						time: 2324.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: East Los FM
	RadioStation(
		index: 26,
		number: 8,
		name: "East Los FM",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 2,
			column: 1
		),
		randomize: false,
		rotate: false,
		root: "RADIO_08_MEXICAN",
		songs: [
			//MEX_FINAL_MIX_
			Song(
				file: "MEX_FINAL_MIX_32",
				root: "RADIO_08_MEXICAN/mex_final_mix_32/",
				labels: [
					//El Cocaino
					Label(
						artist: "LOS BUITRES DE CULIACAN SINALOA",
						title: "El Cocaino",
						time: 0.0
					),
					//Es-Toy
					Label(
						artist: "MEXICAN INSTITUTE OF SOUND",
						title: "Es-Toy",
						time: 155.0
					),
					//Criminal Sound
					Label(
						artist: "NINA DIOZ",
						title: "Criminal Sound",
						time: 274.0
					),
					//Radio Capital
					Label(
						artist: "LA VIDA BOHEME",
						title: "Radio Capital",
						time: 366.0
					),
					//Autos, Moda Y Rock And Roll
					Label(
						artist: "FANDANGO",
						title: "Autos, Moda Y Rock And Roll",
						time: 504.0
					),
					//El Tatuado
					Label(
						artist: "DON CHETO",
						title: "El Tatuado",
						time: 638.0
					),
					//Se Me Perdio la Cadenita
					Label(
						artist: "LA SONORA DINAMITA",
						title: "Se Me Perdio la Cadenita",
						time: 839.0
					),
					//Fiebre De Jack
					Label(
						artist: "SHE'S A TEASE",
						title: "Fiebre De Jack",
						time: 988.0
					),
					//Pachuco
					Label(
						artist: "MALDITA VECINDAD",
						title: "Pachuco",
						time: 1210.0
					),
					//El Sonidito
					Label(
						artist: "HECHIZEROS BAND",
						title: "El Sonidito",
						time: 1395.0
					),
					//Fresco
					Label(
						artist: "MILKMAN",
						title: "Fresco",
						time: 1574.0
					),
					//Maldito
					Label(
						artist: "JESSY BULBO",
						title: "Maldito",
						time: 1778.0
					),
					//Yo Tengo El Don
					Label(
						artist: "LA LIGA FEAT. ALIKA",
						title: "Yo Tengo El Don",
						time: 1951.0
					),
					//La Granja
					Label(
						artist: "LOS TIGRES DEL NORTE",
						title: "La Granja",
						time: 2122.0
					),
					//El Rey Y Yo
					Label(
						artist: "LOS ANGELES NEGROS",
						title: "El Rey Y Yo",
						time: 2346.0
					)
				],
				set: nil,
				intros: []
			)
		],
		general: [],
		sid: [],
		mono_solo: [],
		time: [
			"EVENING": [],
			"MORNING": []
		],
		to: [
			"AD": [],
			"NEWS": []
		]
	),
	
	// MARK: West Coast Classics
	RadioStation(
		index: 27,
		number: 9,
		name: "West Coast Classics",
		image: "gtav_radio_stations_texture_512",
		imagePosition: Position(
			row: 1,
			column: 3
		),
		randomize: true,
		rotate: false,
		root: "RADIO_09_HIPHOP_OLD",
		songs: [
			//AFRO_PUFFS
			Song(
				file: "AFRO_PUFFS",
				root: "RADIO_09_HIPHOP_OLD/afro_puffs/",
				labels: [
					Label(
						artist: "THE LADY OF RAGE",
						title: "Afro Puffs",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "AFRO_PUFFS_01",
						delay: 5.0
					),
					Intro(
						file: "AFRO_PUFFS_02",
						delay: 5.0
					)
				]
			),
			//AMBITIONZ_AZ_A_RIDAH
			Song(
				file: "AMBITIONZ_AZ_A_RIDAH",
				root: "RADIO_09_HIPHOP_OLD/ambitionz_az_a_ridah/",
				labels: [
					Label(
						artist: "2PAC",
						title: "Ambitionz Az A Ridah",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "AMBITIONZ_AZ_A_RIDAH_01",
						delay: 5.0
					),
					Intro(
						file: "AMBITIONZ_AZ_A_RIDAH_02",
						delay: 5.0
					)
				]
			),
			//APPETITE_FOR_DESTRUCTION
			Song(
				file: "APPETITE_FOR_DESTRUCTION",
				root: "RADIO_09_HIPHOP_OLD/appetite_for_destruction/",
				labels: [
					Label(
						artist: "N.W.A",
						title: "Appetite For Destruction",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "APPETITE_FOR_DESTRUCTION_01",
						delay: 5.0
					),
					Intro(
						file: "APPETITE_FOR_DESTRUCTION_02",
						delay: 5.0
					)
				]
			),
			//BALLAD_OF_A_MENACE
			Song(
				file: "BALLAD_OF_A_MENACE",
				root: "RADIO_09_HIPHOP_OLD/ballad_of_a_menace/",
				labels: [
					Label(
						artist: "CPO",
						title: "Ballad Of A Menace",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BALLAD_OF_A_MENACE_01",
						delay: 5.0
					),
					Intro(
						file: "BALLAD_OF_A_MENACE_02",
						delay: 5.0
					),
					Intro(
						file: "BALLAD_OF_A_MENACE_03",
						delay: 5.0
					)
				]
			),
			//BOW_DOWN
			Song(
				file: "BOW_DOWN",
				root: "RADIO_09_HIPHOP_OLD/bow_down/",
				labels: [
					Label(
						artist: "WESTSIDE CONNECTION",
						title: "Bow Down",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "BOW_DOWN_01",
						delay: 5.0
					),
					Intro(
						file: "BOW_DOWN_02",
						delay: 5.0
					)
				]
			),
			//C_WALK
			Song(
				file: "C_WALK",
				root: "RADIO_09_HIPHOP_OLD/c_walk/",
				labels: [
					Label(
						artist: "KURUPT",
						title: "C-Walk",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "C_WALK_01",
						delay: 5.0
					),
					Intro(
						file: "C_WALK_02",
						delay: 5.0
					)
				]
			),
			//CAPTAIN_SAVE_A_HOE
			Song(
				file: "CAPTAIN_SAVE_A_HOE",
				root: "RADIO_09_HIPHOP_OLD/captain_save_a_hoe/",
				labels: [
					Label(
						artist: "E-40",
						title: "Captain Save A Hoe",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "CAPTAIN_SAVE_A_HOE_01",
						delay: 5.0
					),
					Intro(
						file: "CAPTAIN_SAVE_A_HOE_02",
						delay: 5.0
					)
				]
			),
			//DOLLAZ_AND_SENSE
			Song(
				file: "DOLLAZ_AND_SENSE",
				root: "RADIO_09_HIPHOP_OLD/dollaz_and_sense/",
				labels: [
					Label(
						artist: "DJ QUIK",
						title: "Dollaz & Sense",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//FIRST_OF_THE_MONTH
			Song(
				file: "FIRST_OF_THE_MONTH",
				root: "RADIO_09_HIPHOP_OLD/first_of_the_month/",
				labels: [
					Label(
						artist: "BONE THUGS-N-HARMONY",
						title: "1st Of Tha Month",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "FIRST_OF_THE_MONTH_01",
						delay: 5.0
					),
					Intro(
						file: "FIRST_OF_THE_MONTH_02",
						delay: 5.0
					)
				]
			),
			//GANGSTA_GANGSTA
			Song(
				file: "GANGSTA_GANGSTA",
				root: "RADIO_09_HIPHOP_OLD/gangsta_gangsta/",
				labels: [
					Label(
						artist: "N.W.A",
						title: "Gangsta Gangsta",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GANGSTA_GANGSTA_01",
						delay: 5.0
					),
					Intro(
						file: "GANGSTA_GANGSTA_02",
						delay: 5.0
					)
				]
			),
			//GIN_AND_JUICE
			Song(
				file: "GIN_AND_JUICE",
				root: "RADIO_09_HIPHOP_OLD/gin_and_juice/",
				labels: [
					Label(
						artist: "SNOOP DOGG",
						title: "Gin and Juice",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "GIN_AND_JUICE_01",
						delay: 5.0
					),
					Intro(
						file: "GIN_AND_JUICE_02",
						delay: 5.0
					)
				]
			),
			//I_GOT_FIVE_ON_IT
			Song(
				file: "I_GOT_FIVE_ON_IT",
				root: "RADIO_09_HIPHOP_OLD/i_got_five_on_it/",
				labels: [
					Label(
						artist: "THE LUNIZ",
						title: "I Got 5 On It",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//LATE_NIGHT_HYPE
			Song(
				file: "LATE_NIGHT_HYPE",
				root: "RADIO_09_HIPHOP_OLD/late_night_hype/",
				labels: [
					Label(
						artist: "COMPTON'S MOST WANTED",
						title: "Late Night Hype",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "LATE_NIGHT_HYPE_01",
						delay: 5.0
					),
					Intro(
						file: "LATE_NIGHT_HYPE_02",
						delay: 5.0
					)
				]
			),
			//LIKE_A_PIANO
			Song(
				file: "LIKE_A_PIANO",
				root: "RADIO_09_HIPHOP_OLD/like_a_piano/",
				labels: [
					Label(
						artist: "KING TEE",
						title: "Played Like A Piano",
						time: 0.0
					)
				],
				set: nil,
				intros: []
			),
			//MIND_PLAYING_TRICKS
			Song(
				file: "MIND_PLAYING_TRICKS",
				root: "RADIO_09_HIPHOP_OLD/mind_playing_tricks/",
				labels: [
					Label(
						artist: "GETO BOYS",
						title: "Mind Playing Tricks On Me",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "MIND_PLAYING_TRICKS_01",
						delay: 5.0
					),
					Intro(
						file: "MIND_PLAYING_TRICKS_02",
						delay: 5.0
					)
				]
			),
			//NO_MORE_QUESTIONS
			Song(
				file: "NO_MORE_QUESTIONS",
				root: "RADIO_09_HIPHOP_OLD/no_more_questions/",
				labels: [
					Label(
						artist: "EAZY-E",
						title: "No More ?'s",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NO_MORE_QUESTIONS_01",
						delay: 5.0
					),
					Intro(
						file: "NO_MORE_QUESTIONS_02",
						delay: 5.0
					)
				]
			),
			//NOTHIN_BUT_THE_CAVI_HIT
			Song(
				file: "NOTHIN_BUT_THE_CAVI_HIT",
				root: "RADIO_09_HIPHOP_OLD/nothin_but_the_cavi_hit/",
				labels: [
					Label(
						artist: "MACK 10 FEAT. THE DOGG POUND",
						title: "Nothin' But The Cavi Hit",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "NOTHIN_BUT_THE_CAVI_HIT_01",
						delay: 5.0
					),
					Intro(
						file: "NOTHIN_BUT_THE_CAVI_HIT_02",
						delay: 5.0
					)
				]
			),
			//SERVIN_EM_HEAT
			Song(
				file: "SERVIN_EM_HEAT",
				root: "RADIO_09_HIPHOP_OLD/servin_em_heat/",
				labels: [
					Label(
						artist: "SOUTH CENTRAL CARTEL",
						title: "Servin' 'Em Heat",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SERVIN_EM_HEAT_01",
						delay: 5.0
					),
					Intro(
						file: "SERVIN_EM_HEAT_02",
						delay: 5.0
					)
				]
			),
			//SHERM_STICK
			Song(
				file: "SHERM_STICK",
				root: "RADIO_09_HIPHOP_OLD/sherm_stick/",
				labels: [
					Label(
						artist: "JAYO FELONY",
						title: "Sherm Stick",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SHERM_STICK_01",
						delay: 5.0
					),
					Intro(
						file: "SHERM_STICK_02",
						delay: 5.0
					)
				]
			),
			//SO_YOU_WANT_TO_BE_A_GANGSTER
			Song(
				file: "SO_YOU_WANT_TO_BE_A_GANGSTER",
				root: "RADIO_09_HIPHOP_OLD/so_you_want_to_be_a_gangster/",
				labels: [
					Label(
						artist: "TOO $HORT",
						title: "So You Wanna Be A Gangster",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "SO_YOU_WANT_TO_BE_A_GANGSTER_01",
						delay: 5.0
					),
					Intro(
						file: "SO_YOU_WANT_TO_BE_A_GANGSTER_02",
						delay: 5.0
					)
				]
			),
			//STILL_D_R_E
			Song(
				file: "STILL_D_R_E",
				root: "RADIO_09_HIPHOP_OLD/still_d_r_e/",
				labels: [
					Label(
						artist: "DR. DRE",
						title: "Still D.R.E (ft Snoop Dogg)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "STILL_D_R_E_01",
						delay: 5.0
					),
					Intro(
						file: "STILL_D_R_E_02",
						delay: 5.0
					)
				]
			),
			//STRAIGHT_UP_MENACE
			Song(
				file: "STRAIGHT_UP_MENACE",
				root: "RADIO_09_HIPHOP_OLD/straight_up_menace/",
				labels: [
					Label(
						artist: "MC EIHT",
						title: "Streiht Up Menace",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "STRAIGHT_UP_MENACE_01",
						delay: 5.0
					),
					Intro(
						file: "STRAIGHT_UP_MENACE_02",
						delay: 5.0
					)
				]
			),
			//THE_MURDA_SHOW
			Song(
				file: "THE_MURDA_SHOW",
				root: "RADIO_09_HIPHOP_OLD/the_murda_show/",
				labels: [
					Label(
						artist: "SPICE 1 FEAT. MC EIHT",
						title: "The Murda Show",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_MURDA_SHOW_01",
						delay: 5.0
					),
					Intro(
						file: "THE_MURDA_SHOW_02",
						delay: 5.0
					),
					Intro(
						file: "THE_MURDA_SHOW_03",
						delay: 5.0
					),
					Intro(
						file: "THE_MURDA_SHOW_04",
						delay: 5.0
					)
				]
			),
			//THE_NEXT_EPISODE
			Song(
				file: "THE_NEXT_EPISODE",
				root: "RADIO_09_HIPHOP_OLD/the_next_episode/",
				labels: [
					Label(
						artist: "DR. DRE",
						title: "The Next Episode (Ft Snoop Dogg)",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THE_NEXT_EPISODE_01",
						delay: 5.0
					),
					Intro(
						file: "THE_NEXT_EPISODE_02",
						delay: 5.0
					)
				]
			),
			//THIS_DJ
			Song(
				file: "THIS_DJ",
				root: "RADIO_09_HIPHOP_OLD/this_dj/",
				labels: [
					Label(
						artist: "WARREN G",
						title: "This D.J.",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "THIS_DJ_01",
						delay: 5.0
					),
					Intro(
						file: "THIS_DJ_02",
						delay: 5.0
					)
				]
			),
			//WE_ROLL_DEEP
			Song(
				file: "WE_ROLL_DEEP",
				root: "RADIO_09_HIPHOP_OLD/we_roll_deep/",
				labels: [
					Label(
						artist: "THE CONSCIOUS DAUGHTERS",
						title: "We Roll Deep",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WE_ROLL_DEEP_01",
						delay: 5.0
					),
					Intro(
						file: "WE_ROLL_DEEP_02",
						delay: 5.0
					)
				]
			),
			//WHAT_WOULD_YOU_DO
			Song(
				file: "WHAT_WOULD_YOU_DO",
				root: "RADIO_09_HIPHOP_OLD/what_would_you_do/",
				labels: [
					Label(
						artist: "THE DOGG POUND",
						title: "What Would U Do",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WHAT_WOULD_YOU_DO_01",
						delay: 5.0
					),
					Intro(
						file: "WHAT_WOULD_YOU_DO_02",
						delay: 5.0
					)
				]
			),
			//WHAT_YOU_WANNA_DO
			Song(
				file: "WHAT_YOU_WANNA_DO",
				root: "RADIO_09_HIPHOP_OLD/what_you_wanna_do/",
				labels: [
					Label(
						artist: "KAUSION",
						title: "What You Wanna Do",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "WHAT_YOU_WANNA_DO_01",
						delay: 5.0
					),
					Intro(
						file: "WHAT_YOU_WANNA_DO_02",
						delay: 5.0
					)
				]
			),
			//YOU_KNOW_HOW_WE_DO
			Song(
				file: "YOU_KNOW_HOW_WE_DO",
				root: "RADIO_09_HIPHOP_OLD/you_know_how_we_do/",
				labels: [
					Label(
						artist: "ICE CUBE",
						title: "You Know How We Do It",
						time: 0.0
					)
				],
				set: nil,
				intros: [
					Intro(
						file: "YOU_KNOW_HOW_WE_DO_01",
						delay: 5.0
					),
					Intro(
						file: "YOU_KNOW_HOW_WE_DO_02",
						delay: 5.0
					)
				]
			)
		],
		general: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"],
		sid: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18"],
		mono_solo: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"],
		time: [
			"EVENING": ["01","02","03","04","05","06","07"],
			"MORNING": ["01","02","03","04","05","06","07"]
		],
		to: [
			"AD": ["01","02","03","04","05","06","07"],
			"NEWS": ["01","02","03","04","05","06"]
		]
	),
]

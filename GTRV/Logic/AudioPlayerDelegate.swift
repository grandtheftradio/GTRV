//
//  AudioPlayerDelegate.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI
import MediaPlayer

class AudioPlayerDelegate: NSObject, AVAudioPlayerDelegate, ObservableObject {
    
    @Published var settingsView: Bool = false
    @Published var selectedStationNumber: Int = 10
    @Published var label: [String: String] = [
        "album": "",
        "artist": "",
        "title": ""
    ]
    @Published var stopped: Bool = false
    
    var albumArtwork: UIImage?
    var initialized: Bool = false
    
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playRadio(currentStation.index)
    }
    
    @objc func handleInterruption(notification: Notification) {
        guard let userInfo = notification.userInfo,
              let typeValue = userInfo[AVAudioSessionInterruptionTypeKey] as? UInt,
              let type = AVAudioSession.InterruptionType(rawValue: typeValue) else {
            //print("guard: handleInterruption > userInfo/typeValue/type")
            return
        }
        
        switch type {
        case .began:
            print("interruption began")
        case .ended:
            print("interruption ended")
            guard let optionsValue = userInfo[AVAudioSessionInterruptionOptionKey] as? UInt else {
                //print("guard: handleInterruption > optionsValue")
                return
            }
            let options = AVAudioSession.InterruptionOptions(rawValue: optionsValue)
            if options.contains(.shouldResume) {
                /*guard let audioPlayer1: AVAudioPlayer = audioPlayer[currentStation.name]?[1] else {
                    //print("guard: handleInterruption > audioPlayer1")
                    return
                }*/
                tuneIn(currentStation)
            }
        default: ()
        }
        
    }
    
    @objc func handleRouteChange(notification: Notification) {
        guard let userInfo = notification.userInfo,
              let reasonValue = userInfo[AVAudioSessionRouteChangeReasonKey] as? UInt,
              let reason = AVAudioSession.RouteChangeReason(rawValue: reasonValue) else {
            return
        }
        if (reason == .oldDeviceUnavailable) {
            StopRadio()
            stopped = true
        }
    }
    
    func initiateAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(
                AVAudioSession.Category.playback,
                mode: AVAudioSession.Mode.default
            )
        } catch let error {
            print(error.localizedDescription)
        }
        try! AVAudioSession.sharedInstance().setActive(true)
    }
    
    func monitorSong() {
        if let audioPlayers: [Int: AVAudioPlayer] = audioPlayer[currentStation.name] {
            /*var audioPlayer1: AVAudioPlayer// = audioPlayers[1]
            var audioPlayer2: AVAudioPlayer// = audioPlayers[2]
            var audioPlayer3: AVAudioPlayer// = audioPlayers[3]
            
            if let aP1: AVAudioPlayer = audioPlayers[1] {
                audioPlayer1 = aP1
            }
            if let aP2: AVAudioPlayer = audioPlayers[2] {
                audioPlayer2 = aP2
            }
            if let aP3: AVAudioPlayer = audioPlayers[3] {
                audioPlayer3 = aP3
            }*/
            
            let currentTime: TimeInterval = audioPlayers[1]?.currentTime ?? 0.0
            
            // MONITOR INTRO PLAY
            if (playIntro) {
                if (currentTime >= introTime) {
                    print("play intro")
                    audioPlayers[2]?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                    audioPlayers[2]?.play()
                    audioPlayers[1]?.setVolume(self.stopped ? 0.0 : 0.5, fadeDuration: 0.1)
                    DispatchQueue.main.asyncAfter(deadline: .now() + introDuration) {
                        audioPlayers[1]?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.1)
                    }
                    playIntro = false
                }
            }
            
            // MONITOR OUTRO PLAY
            if (playOutro) {
                if (currentTime >= outroTime) {
                    print("play outro")
                    audioPlayers[3]?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                    audioPlayers[3]?.play()
                    audioPlayers[1]?.setVolume(self.stopped ? 0.0 : 0.5, fadeDuration: 0.1)
                    DispatchQueue.main.asyncAfter(deadline: .now() + outroDuration) {
                        audioPlayers[1]?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.1)
                    }
                    playOutro = false
                }
            }
            
            // MONITOR TUNE TIMES
            if !stopped {
                Tune[currentStation.name]?.Position = currentTime
                Tune[currentStation.name]?.Duration = audioPlayers[1]?.duration ?? 0.0
            }
        }
        

    }
    
    func play(_ Station: RadioStation, _ type: String) {
        guard var tune: TuneData = Tune[Station.name] else {
            //print("guard: play > tune")
            return
        }
        
        var audioPlayer1: AVAudioPlayer? // song/mono_solo/ad/news/id
        var audioPlayer2: AVAudioPlayer? // intro
        var audioPlayer3: AVAudioPlayer? // outro
        
        audioPlayerSong[Station.name]? = nil
        
        if (currentStation.number != selectedStationNumber) {
            //previousStation = currentStation
            currentStation = Station
        }
        currentAlbum = Station.name
        
        switch type {
        case "ad":
            print("play ad")
            
            currentSong = nil
            
            let ads: [String] = RadioAdverts
            let a: Int = Int(arc4random_uniform(UInt32(ads.count))) //RANDOM AD INDEX
            let rootAd: [String] = ads[a].components(separatedBy: "/")
            let adRoot: String = rootAd[0]
            let ad = rootAd[1]
            print("ad: RADIO_ADVERTS/\(adRoot)/\(ad)")
            guard let adPath = Bundle.main.path(forResource: ad, ofType: "mp3", inDirectory: "RADIO_ADVERTS/\(adRoot)/") else {
                //print("guard: play > ad > adPath")
                return
            }
            let adURL = URL(fileURLWithPath: adPath)
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: adURL)
                audioPlayer1?.delegate = self
                audioPlayer1?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                if tune.In {
                    let adDuration: TimeInterval = audioPlayer1?.duration ?? 0.0
                    let tuneInTime: TimeInterval = TuneInTime(
                        duration: adDuration
                    )
                    audioPlayer1?.currentTime = tuneInTime
                    tune.In = false
                }
                audioPlayer1?.play()
                lastPlayed = "ad"
            } catch let error {
                print(error.localizedDescription)
            }
        case "mono_solo":
            print("play mono_solo")
            
            currentSong = nil
            
            if let monoSolos: [String] = Station.mono_solo {
                let stationRoot: String = Station.root ?? ""
                let m: Int = Int(arc4random_uniform(UInt32(monoSolos.count))) //RANDOM MONO_SOLO INDEX
                let monoSolo: String = monoSolos[m]
                let monoSoloRoot: String = ("\(stationRoot)/mono_solo_\(monoSolo)")
                print("mono_solo: \(monoSoloRoot)/MONO_SOLO_\(monoSolo)")
                guard let monoSoloPath = Bundle.main.path(forResource: "MONO_SOLO_\(monoSolo)", ofType: "mp3", inDirectory: monoSoloRoot) else {
                    //print("guard: play > mono_solo > monoSoloPath")
                    return
                }
                let monoSoloURL: URL = URL(fileURLWithPath: monoSoloPath)
                do {
                    audioPlayer1 = try AVAudioPlayer(contentsOf: monoSoloURL)
                    audioPlayer1?.delegate = self
                    audioPlayer1?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                    audioPlayer1?.play()
                    if tune.In {
                        let monoSoloDuration: TimeInterval = audioPlayer1?.duration ?? 0.0
                        let tuneInTime: TimeInterval = TuneInTime(
                            duration: monoSoloDuration
                        )
                        audioPlayer1?.currentTime = tuneInTime
                        tune.In = false
                    }
                    lastPlayed = "mono_solo"
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        case "news":
            print("play news")
            
            currentSong = nil
            
            let newses: [String] = RadioNews
            let n: Int = Int(arc4random_uniform(UInt32(newses.count))) //RANDOM NEWS INDEX
            let rootNews: [String] = newses[n].components(separatedBy: "/")
            let newsRoot: String = rootNews[0]
            let news = rootNews[1]
            print("news: RADIO_NEWS/\(newsRoot)/\(news)")
            guard let newsPath = Bundle.main.path(forResource: news, ofType: "mp3", inDirectory: "RADIO_NEWS/\(newsRoot)/") else {
                //print("guard: play > news > newsPath")
                return
            }
            let newsURL = URL(fileURLWithPath: newsPath)
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: newsURL)
                audioPlayer1?.delegate = self
                audioPlayer1?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                if tune.In {
                    let newsDuration: TimeInterval = audioPlayer1?.duration ?? 0.0
                    let tuneInTime: TimeInterval = TuneInTime(
                        duration: newsDuration
                    )
                    audioPlayer1?.currentTime = tuneInTime
                    tune.In = false
                }
                audioPlayer1?.play()
                lastPlayed = "news"
            } catch let error {
                print(error.localizedDescription)
            }
        case "station_id":
            print("play station_id")
            
            currentSong = nil
            
            if let stationIDs: [String] = Station.sid {
                let stationRoot: String = Station.root ?? ""
                let i: Int = Int(arc4random_uniform(UInt32(stationIDs.count))) //RANDOM ID INDEX
                let stationID: String = stationIDs[i]
                let stationIDRoot: String = ("\(stationRoot)/id_\(stationID)")
                print("id: \(stationIDRoot)/ID_\(stationID)")
                guard let stationIDPath = Bundle.main.path(forResource: "ID_\(stationID)", ofType: "mp3", inDirectory: stationIDRoot) else {
                    //print("guard: play > station_id > stationIDPath")
                    return
                }
                let stationIDURL: URL = URL(fileURLWithPath: stationIDPath)
                do {
                    audioPlayer1 = try AVAudioPlayer(contentsOf: stationIDURL)
                    audioPlayer1?.delegate = self
                    audioPlayer1?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                    if tune.In {
                        let stationIDDuration: TimeInterval = audioPlayer1?.duration ?? 0.0
                        let tuneInTime: TimeInterval = TuneInTime(
                            duration: stationIDDuration
                        )
                        audioPlayer1?.currentTime = tuneInTime
                        tune.In = false
                    }
                    audioPlayer1?.play()
                    lastPlayed = "id"
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        default: //song
            print("play song")
            if let songs: [Song] = Station.songs {
                var unplayed: [Song] = unplayedSongs[Station.name] ?? []
                
                if (unplayed.isEmpty) {
                    if (Station.rotate) {
                        guard let isRotated = rotated[Station.name] else {
                            //print("guard: play > song > unplayed.isEmpty > isRotated")
                            return
                        }
                        if (!isRotated) {
                            let frs: Int = Int(arc4random_uniform(UInt32(songs.count)))
                            var rotatedSongs: [Song] = []
                            for rs in frs..<songs.count {
                                rotatedSongs.append(songs[rs])
                            }
                            unplayed = rotatedSongs
                            rotated[Station.name] = true
                        } else {
                            unplayed = songs
                        }
                    } else {
                        unplayed = songs
                    }
                }
                let stationRoot: String = Station.root ?? ""
				let generalRoot: String = Station.general_root ?? ""
                var s: Int = 0 //UNPLAYED SONG INDEX
                if Station.randomize {
                    s = Int(arc4random_uniform(UInt32(unplayed.count)))
                }
                
                let randomSong: Song = unplayed[s]
                let song: String = randomSong.file
                let songRoot: String = randomSong.root
                var intros: [Intro] = randomSong.intros
                
                if (song == "SATURDAY_NIGHTS_ALRIGHT") {
                    // REMOVE "It's Saturday Night" INTRO IF NOT SATURDAY NIGHT
                    let calendarCurrentComponent: (Calendar.Component, Date) -> Int = Calendar.current.component
                    let currentDateAndTime: Date = Date()
                    let saturday: Bool = calendarCurrentComponent(.weekday, currentDateAndTime) == 7
                    let night: Bool = calendarCurrentComponent(.hour, currentDateAndTime) >= 19
                    if !(saturday && night) {
                        intros.remove(at: 1)
                    }
                }
                
                let hasIntros: Bool = !intros.isEmpty
                let generals: [String] = Station.general ?? []
                let hasGenerals: Bool = !generals.isEmpty
                
                var timeMornings: [String] = []
                var timeEvenings: [String] = []
                if let time: [String: [String]] = Station.time {
                    timeMornings = time["MORNING"] ?? []
                    timeEvenings = time["EVENING"] ?? []
                }
                let hasTimeMornings = !timeMornings.isEmpty
                let hasTimeEvenings = !timeEvenings.isEmpty
                
                if (hasIntros || hasGenerals) {
                    playIntro = tune.In ? false : (Double.random(in: 1.0..<(100.0 + 1.0)) <= 67.86) // ~73.68%
                } else {
                    playIntro = false
                }
                var toAdOutros: [String] = []
                var toNewsOutros: [String] = []
                if let to: [String: [String]] = Station.to {
                    toAdOutros = to["AD"] ?? []
                    toNewsOutros = to["NEWS"] ?? []
                }
                let hasToAds: Bool = !toAdOutros.isEmpty
                let hasToNews: Bool = !toNewsOutros.isEmpty
                if (hasGenerals || hasToAds || hasToNews) {
                    playOutro = tune.In ? false : (Double.random(in: 1.0..<(100.0 + 1.0)) <= 79.76) // ~79.76%
                } else {
                    playOutro = false
                }
                
                // PLAY INTRO
                if (playIntro) {
					var introRoot: String = randomSong.intros_root ?? ""
                    var playGeneralIntro: Bool = false
                    if (hasGenerals) {
                        if (hasIntros) {
                            playGeneralIntro = (Double.random(in: 1.0..<(100.0 + 1.0)) <= 26.31) // ~26.31%
                        } else {
                            playGeneralIntro = true
                        }
                    }
                    if (playGeneralIntro) {
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
                        
                        let morningIntroStartTime: String = "05:00:00" //5:00:00 AM
                        let morningIntroEndTime: String = "08:30:00" //8:30:00 AM
                        let eveningIntroStartTime: String = "17:00:00" //5:00:00 PM
                        let eveningIntroEndTime: String = "20:30:00" //8:30:00 PM
                        
                        let morningIntroStartDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(morningIntroStartTime)") ?? Date()
                        let morningInitroEndDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(morningIntroEndTime)") ?? Date()
                        let eveningIntroStartDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(eveningIntroStartTime)") ?? Date()
                        let eveningIntroEndDateTime: Date = dateTimeFormatter.date(from: "\(currentDate) \(eveningIntroEndTime)") ?? Date()
                        
                        let morningIntroTime: Bool = (morningIntroStartDateTime <= currentDateTime) && (currentDateTime <= morningInitroEndDateTime)
                        if (!morningIntroTime) {
                            morningTimeIntroPlayed = false
                        }
                        let eveningIntroTime: Bool = (eveningIntroStartDateTime <= currentDateTime) && (currentDateTime <= eveningIntroEndDateTime)
                        if (!eveningIntroTime) {
                            eveningTimeIntroPlayed = false
                        }
                        
                        var playTimeMorningIntro: Bool = false
                        if (!morningTimeIntroPlayed) {
                            if (hasTimeMornings) {
                                playTimeMorningIntro = (morningIntroTime && (Double.random(in: 1.0..<(100.0 + 1.0)) <= 100.0)) // ~6.67%
                            }
                        }
                        
                        var playTimeEveningIntro: Bool = false
                        if (!eveningTimeIntroPlayed) {
                            if (hasTimeEvenings) {
                                playTimeEveningIntro = (eveningIntroTime && (Double.random(in: 1.0..<(100.0 + 1.0)) <= 100.0)) // ~6.67%
                            }
                        }
                        
                        switch true {
                        case playTimeMorningIntro:
                            introRoot = "\(stationRoot)/time/"
                            intros.removeAll()
                            for timeMorning in timeMornings {
                                let morningIntro = Intro(
                                    file: "MORNING_\(timeMorning)",
                                    delay: 8.0
                                )
                                intros.append(morningIntro)
                            }
                            morningTimeIntroPlayed = true
                        case playTimeEveningIntro:
                            introRoot = "\(stationRoot)/time/"
                            intros.removeAll()
                            for timeEvening in timeEvenings {
                                let eveningIntro = Intro(
                                    file: "EVENING_\(timeEvening)",
                                    delay: 8.0
                                )
                                intros.append(eveningIntro)
                            }
                            eveningTimeIntroPlayed = true
                        default:
                            introRoot = "\(stationRoot)/\(generalRoot)/"
                            intros.removeAll()
                            for general in generals {
                                let generalIntro = Intro(
                                    file: "GENERAL_\(general)",
                                    delay: 8.0
                                )
                                intros.append(generalIntro)
                            }
                        }
                    }
                    let i: Int = Int(arc4random_uniform(UInt32(intros.count))) //INTRO INDEX
                    let intro: String = intros[i].file
                    introTime = intros[i].delay
                    print("intro: \(introRoot)\(intro)")
                    guard let introPath = Bundle.main.path(forResource: intro, ofType: "mp3", inDirectory: introRoot) else {
                        //print("guard: play > ad > introPath")
                        return
                    }
                    let introURL: URL = URL(fileURLWithPath: introPath)
                    do {
                        audioPlayer2 = try AVAudioPlayer(contentsOf: introURL)
                        introDuration = audioPlayer2?.duration ?? 0.0
                    } catch let error {
                        print(error.localizedDescription)
                    }
                }
                
                currentSong = randomSong
                
                audioPlayerSong[Station.name]? = randomSong
                
                // PLAY SONG
                print("song: \(songRoot)\(song)")
                guard let songPath = Bundle.main.path(forResource: song, ofType: "mp3", inDirectory: "\(songRoot)/") else {
                    //print("guard: play > ad > songPath")
                    return
                }
                let songURL = URL(fileURLWithPath: songPath)
                var songDuration: TimeInterval = 0.0
                do {
                    audioPlayer1 = try AVAudioPlayer(contentsOf: songURL)
                    audioPlayer1?.delegate = self
                    audioPlayer1?.setVolume(self.stopped ? 0.0 : 1.0, fadeDuration: 0.0)
                    songDuration = audioPlayer1?.duration ?? 0.0
                    if tune.In {
                        let tuneInTime: TimeInterval = TuneInTime(
                            duration: songDuration
                        )
                        audioPlayer1?.currentTime = tuneInTime
                        tune.In = false
                    }
                    audioPlayer1?.play()
                    lastPlayed = "song"
                    
                    unplayed.remove(at: s)
                    
                    unplayedSongs[Station.name] = unplayed
                } catch let error {
                    print(error.localizedDescription)
                }
                
                updateLabel()
                
                // PLAY OUTRO
                if (playOutro) {
                    var outroRoot: String = ""
                    let news_ad_general: Double = Double.random(in: 1.0..<(100.0 + 1.0))
                    let playToNewsOutro: Bool = !hasToNews ? false : (news_ad_general <= 17.91) // ~17.91%
                    let playToAdOutro: Bool = (playToNewsOutro || (!hasToAds)) ? false : (news_ad_general <= (17.91 + 28.36)) // ~28.36%
                    //let playGeneralOutro: Bool = (playToNewsOutro || playToAdOutro || (!hasGenerals)) ? false : (news_ad_general <= (17.91 + 28.36 + 53.73)) // ~53.73%
                    
                    var outros: [Intro] = []
                    switch (true) {
                    case playToAdOutro:
                        outroType = "ad"
                        outroRoot = "\(stationRoot)/to/"
                        for toAd in toAdOutros {
                            let toAdOutro = Intro(file: "TO_AD_\(toAd)", delay: 0.0) //need to calculate delay: song duration - toAd duration
                            outros.append(toAdOutro)
                        }
                    case playToNewsOutro:
                        outroType = "news"
                        outroRoot = "\(stationRoot)/to/"
                        for toNews in toNewsOutros {
                            let toNewsOutro = Intro(file: "TO_NEWS_\(toNews)", delay: 0.0) //need to calculate delay: song duration - toNews duration
                            outros.append(toNewsOutro)
                        }
                    default:
                        outroType = "general"
                        outroRoot = "\(stationRoot)/\(generalRoot)/"
                        for general in generals {
                            let generalOutro = Intro(file: "GENERAL_\(general)", delay: 0.0) //need to calculate delay: song duration - general duration
                            outros.append(generalOutro)
                        }
                    }
                    let o: Int = Int(arc4random_uniform(UInt32(outros.count))) //RANDOM OUTRO INDEX
                    let outro: String = outros[o].file
                    print("outro: \(outroRoot)\(outro)")
                    guard let outroPath = Bundle.main.path(forResource: outro, ofType: "mp3", inDirectory: outroRoot) else {
                        //print("guard: play > ad > outroPath")
                        return
                    }
                    let outroURL: URL = URL(fileURLWithPath: outroPath)
                    do {
                        audioPlayer3 = try AVAudioPlayer(contentsOf: outroURL)
                        outroDuration = audioPlayer3?.duration ?? 0.0
                        outroTime = (songDuration - outroDuration - 5.0)
                    } catch let error {
                        print(error.localizedDescription)
                    }
                } else {
                    outroType = ""
                }
            }
        }
            
        Tune[Station.name] = tune
        
        audioPlayer[Station.name]?[1] = audioPlayer1
        audioPlayer[Station.name]?[2] = audioPlayer2
        audioPlayer[Station.name]?[3] = audioPlayer3
        
    }
    
    func playRadio(_ selectedStationIndex:Int) {
        switch selectedStationIndex {
        case 0:
			StopRadio()
        default:
			playStation(Station: RadioStations[selectedStationIndex])
        }
    }
    
    func playStation(Station: RadioStation) {
        StopRadio()
        
        initiateAudioSession()
        
        var playSong: Bool = false
        var playAd: Bool = false
        var playMonoSolo: Bool = false
        var playNews: Bool = false
        var playID: Bool = false
        
        switch Station.number {
        case 7, 8, 13, 14, 16, 20, 21:
            playSong = true
        default:
            switch outroType {
            case "ad":
                playAd = true
            case "news":
                playNews = true
            default:
                switch Station.number {
                case 5, 11:
                    let news_ad_song: Double = Double.random(in: 1.0..<(100.0 + 1))
                    switch lastPlayed {
                    case "id":
                        playSong = true
                    case "ad":
                        playAd = (news_ad_song <= 40.0) // ~50.0%
                        playID = !playAd
                    case "news":
                        playID = true
                    case "song":
                        playAd = (news_ad_song <= 90.0) // ~90.0%
                        playNews = !playAd
                    default:
                        playAd = (news_ad_song <= 16.0)
                        playNews = playAd ? false : (news_ad_song <= 20.0)
                        playSong = !(playAd || playNews)
                    }
                default:
                    let news_monoSolo_ad_song: Double = Double.random(in: 1.0..<(100.0 + 1))
                    if ((lastPlayed == "ad") || (lastPlayed == "news")) {
                        if (lastPlayed == "ad") {
                            playAd = (news_monoSolo_ad_song <= 5.0) // ~5.0%
                            playID = !playAd
                        } else {
                            playID = true
                        }
                    } else {
                        if (lastPlayed == "song") {
                            playNews = (news_monoSolo_ad_song <= 1.17) // ~1.17% [-8]
                            playAd = playNews ? false : (news_monoSolo_ad_song <= (1.17 + 2.3)) // ~2.3% [-16]
                            playMonoSolo = (playNews || playAd) ? false : (news_monoSolo_ad_song <= (1.17 + 2.30 + 25.38)) // ~25.38% [+12]
                        }
                        playSong = (playNews || playAd || playMonoSolo) ? false : (news_monoSolo_ad_song <= (1.17 + 2.30 + 25.38 + 71.15)) // ~71.15% [+12]
                    }
                }
            }
        }
        
        switch true {
        case playSong:
            play(Station,"song")
        case playAd:
            play(Station,"ad")
            outroType = ""
        case playMonoSolo:
            play(Station,"mono_solo")
        case playNews:
            play(Station,"news")
            outroType = ""
        case playID:
            play(Station,"station_id")
        default:
            play(Station,"song")
        }
    }
    
    func setupNotifications() {
        let nc = NotificationCenter.default
        nc.addObserver(
            self,
            selector: #selector(handleInterruption),
            name: AVAudioSession.interruptionNotification,
            object: AVAudioSession.sharedInstance()
        )
        nc.addObserver(
            self,
            selector: #selector(handleRouteChange),
            name: AVAudioSession.routeChangeNotification,
            object: nil
        )
    }
    
    func setupRemoteControls() {
        let commandCenter = MPRemoteCommandCenter.shared()
        
        // PLAY COMMAND HANDLER
        commandCenter.playCommand.addTarget { [unowned self] event in
            if self.stopped {
                tuneIn(currentStation)
                return .success
            }
            return .commandFailed
        }
        
        // PAUSE COMMAND HANDLER
        commandCenter.pauseCommand.addTarget { [unowned self] event in
            if !self.stopped {
                if (selectedStationNumber != 10) {
                    tuneIn(currentStation)
                }
                return .success
            }
            return .commandFailed
        }
        
        // NEXT TRACK COMMAND HANDLER
        commandCenter.nextTrackCommand.addTarget { [unowned self] event in
            var nextStationIndex: Int
            switch currentStation.index {
            case 27:
                nextStationIndex = 1
            default:
                nextStationIndex = (currentStation.index + 1)
            }
            switch nextStationIndex {
            case 0:
				return .commandFailed
            default:
				let nextRadioStation: RadioStation = RadioStations[nextStationIndex]
				tuneIn(nextRadioStation)
				return .success
            }
        }
        
        // PREVIOUS COMMAND HANDLER
        commandCenter.previousTrackCommand.addTarget { [unowned self] event in
            var previousStationIndex: Int
            switch currentStation.index {
            case 1:
                previousStationIndex = 27
            default:
                previousStationIndex = (currentStation.index - 1)
            }
            switch previousStationIndex {
            case 0:
				return .commandFailed
            default:
				let previousRadioStation: RadioStation = RadioStations[previousStationIndex]
				tuneIn(previousRadioStation)
				return .success
			}
        }
    }
    
    func tuneIn(_ Station: RadioStation) {
        // SET PREVIOUS STATION TUNE DATA
        let previousStationName: String = currentStation.name
        let playing: Bool = !stopped
        if playing {
            if let previousAudioPlayers: [Int: AVAudioPlayer] = audioPlayer[previousStationName] {
                let previousAudioPlayer1: AVAudioPlayer? = previousAudioPlayers[1]
                
                Tune[previousStationName]?.In = false
                
                let previousPosition: TimeInterval = previousAudioPlayer1?.currentTime ?? 0.0
                Tune[previousStationName]?.Position = previousPosition
                
                let previousDuration: TimeInterval = previousAudioPlayer1?.duration ?? 0.0
                Tune[previousStationName]?.Duration = previousDuration
                
                Tune[previousStationName]?.Time = Date.now
            }
        }
        
        let stationName: String = Station.name
        if let audioPlayers: [Int: AVAudioPlayer] = audioPlayer[stationName] {
            if (selectedStationNumber == Station.number) {
                // PAUSE/RESUME
                let audioPlayer1: AVAudioPlayer? = audioPlayers[1]
                let audioPlayer2: AVAudioPlayer? = audioPlayers[2]
                let audioPlayer3: AVAudioPlayer? = audioPlayers[3]
                
                if playing {
                    // PAUSE
                    stopped = true
                    audioPlayer1?.stop()
                    audioPlayer2?.stop()
                    audioPlayer3?.stop()
                } else {
                    if (Station.number != 10) {
                        // RESUME
                        stopped = false
                        guard let tune: TuneData = Tune[stationName] else {
                            //print("guard: tuneIn > PAUSE/RESUME > RESUME > tune")
                            return
                        }
                        let tuneInTime: (time: TimeInterval, playNext: Bool) = TuneInTime(
                            tune: tune
                        )
                        if tuneInTime.playNext {
                            Tune[stationName]?.In = true
                            playRadio(Station.index)
                        } else {
                            StopRadio()
                            initiateAudioSession()
                            audioPlayer1?.currentTime = tuneInTime.time
                            audioPlayer1?.play()
                        }
                    }
                }
            } else {
                // PLAY/RESUME
                selectedStationNumber = Station.number
                stopped = false
                let previouslyPlayedStation: Bool = playedStations.contains(selectedStationNumber)
                if (previouslyPlayedStation) {
                    // RESUME STATION
                    StopRadio()
                    guard let tune: TuneData = Tune[stationName] else {
                        //print("guard: tuneIn > PLAY/RESUME > RESUME STATION > tune")
                        return
                    }
                    let tuneInTime: (time: TimeInterval, playNext: Bool) = TuneInTime(
                        tune: tune
                    )
                    if tuneInTime.playNext {
                        Tune[stationName]?.In = true
                        playRadio(Station.index)
                    } else {
                        currentStation = Station
                        currentAlbum = Station.name
                        currentSong = audioPlayerSong[Station.name] ?? nil
                        
                        initiateAudioSession()
                        
                        let audioPlayer1 = audioPlayers[1]
                        audioPlayer1?.currentTime = tuneInTime.time
                        audioPlayer1?.play()
                    }
                } else {
                    // PLAY
                    if (selectedStationNumber != 10) {
                        playedStations.append(selectedStationNumber)
                    }
                    Tune[stationName]?.In = true
                    albumArtwork = nil
                    outroType = ""
                    lastPlayed = ""
                    playRadio(Station.index)
                }
                
                currentStationNumber = Station.number
                UserDefaults.standard.set(currentStationNumber, forKey: currentStationNumberKey)
                
            }
        }
        updateLabel()
    }
    
    func updateLabel() {
        if (currentAlbum != "") {
            label["album"] = currentAlbum
            if let song: Song = currentSong {
                if let audioPlayer1: AVAudioPlayer = audioPlayer[currentStation.name]?[1] {
                    let labels: [Label] = song.labels
                    for lbl in labels.reversed() {
                        let labelTime: TimeInterval = lbl.time
                        let currentTime: TimeInterval = audioPlayer1.currentTime
                        if (labelTime <= currentTime) {
                            label["artist"] = lbl.artist
                            label["title"] = lbl.title
                            break
                        }
                    }
                } else {
                    label["artist"] = ""
                    label["title"] = ""
                    return
                }
            } else {
                label["artist"] = ""
                label["title"] = ""
            }
            let nowPlayingInfoCenter = MPNowPlayingInfoCenter.default()
            var nowPlayingInfo = nowPlayingInfoCenter.nowPlayingInfo ?? [String: Any]()
            
            // ALBUM
            nowPlayingInfo[MPMediaItemPropertyAlbumTitle] = label["album"]
            
            // IMAGE
            if (albumArtwork == nil) {
                //let CurrentRadioStation: RadioStation = RadioStations[currentStation.index]
                let logo: String = currentStation.image
                let row: Int = currentStation.imagePosition.row
                let column: Int = currentStation.imagePosition.column
                let sourceImage: UIImage = UIImage(named: logo)!
                let cropRect: CGRect = CGRect(
                    x: ((128.0 * Double(row)) - 128),
                    y: ((128.0 * Double(column)) - 128),
                    width: 128.0,
                    height: 128.0
                ).integral
                let sourceCGImage: CGImage = sourceImage.cgImage!
                let croppedCGImage: CGImage = sourceCGImage.cropping(to: cropRect)!
                let albumArtwork: UIImage = UIImage(
                    cgImage: croppedCGImage,
                    scale: sourceImage.imageRendererFormat.scale,
                    orientation: sourceImage.imageOrientation
                )
                let mediaItemPropertyArtwork = MPMediaItemArtwork(boundsSize: albumArtwork.size) { (size: CGSize) -> UIImage in
                    return albumArtwork
                }
                nowPlayingInfo[MPMediaItemPropertyArtwork] = mediaItemPropertyArtwork
            }
            
            // ARTIST
            nowPlayingInfo[MPMediaItemPropertyArtist] = label["artist"]
            
            // TITLE
            nowPlayingInfo[MPMediaItemPropertyTitle] = self.label["title"]
            
            nowPlayingInfoCenter.nowPlayingInfo = nowPlayingInfo
        }
    }
    
}

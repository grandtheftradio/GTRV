//
//  AudioPath.swift
//  GTRV
//
//  Created by grandtheftradio on 9/27/24.
//

import Foundation

func AudioPath(resource: String, directory: String) -> String? {
	return AssetManager.shared.audioFilePath(resource: resource, directory: directory)
}

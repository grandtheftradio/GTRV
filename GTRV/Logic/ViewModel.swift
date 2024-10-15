//
//  ViewModel.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI

@MainActor class ViewModel: ObservableObject {
	@Published var appColor: String = "Franklin"
	@Published var colorPickerColor: Color = customColor
	@Published var backgroundUIImage: UIImage? = customBackgroundUIImage
	@Published var favoriteStation: Bool = true
}

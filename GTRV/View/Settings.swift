//
//  Settings.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI
import PhotosUI

struct Settings: View {
	
	@State var AudioPlayer: AudioPlayerDelegate
	@State var backgroundImagePicker: BackgroundImagePicker
	@StateObject var viewModel: ViewModel
	
	var customColorData: CustomColorData
	
	var body: some View {
		ZStack {
			Color(.black)
				.ignoresSafeArea(
					edges: [
						.leading,
						.trailing,
						.bottom
					]
				)
			
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20.0) {
					//SETTINGS HEADER
					HStack{
						ZStack{
							HStack{
								Text("Preferences")
									.font(
										.system(
											size: 25,
											weight: .bold
										)
									)
									.padding(.vertical, 20.0)
									.padding(.leading, 15)
								Spacer()
							}
							HStack{
								Spacer()
								Image(systemName: "globe")
									.foregroundStyle(
										Color(
											red: 0.14,
											green: 0.34,
											blue: 0.60
										)
									)
									.font(
										.system(
											size: 120
										)
									)
									.rotationEffect(
										.degrees(10),
										anchor: .topLeading
									)
									.offset(
										x: 40,
										y: 5
									)
							}
							.frame(
								maxWidth: .infinity,
								maxHeight: 65
							)
							.clipped(
								antialiased: false
							)
						}
						.background(
							LinearGradient(
								gradient: Gradient(
									colors: [
										Color(
											red: 0.01,
											green: 0.26,
											blue: 0.47
										),
										Color(
											red: 0.18,
											green: 0.41,
											blue: 0.72
										)
									]
								),
								startPoint: .topLeading,
								endPoint: .bottomTrailing
							)
						)
						.edgesIgnoringSafeArea(
							.horizontal
						)
					}
					
					//COLOR SELECTOR
					Text("COLOR")
						.fontWeight(.bold)
						.foregroundColor(
							Color(
								red: 0.18,
								green: 0.41,
								blue: 0.72
							)
						)
					ZStack {
						// COLOR SELECTOR SECTORS
						ZStack {
							//FRANKLIN
							ColorSelectorSector(
								rotation: -135.0,
								offsetX: 0.0,
								offsetY: -5.0,
								selected: (viewModel.appColor == "Franklin"),
								color: CharacterColor("Franklin")
								
							)
							//MICHAEL
							ColorSelectorSector(
								rotation: 135.0,
								offsetX: -5.0,
								offsetY: 0.0,
								selected: (viewModel.appColor == "Michael"),
								color: CharacterColor("Michael")
							)
							//TREVOR
							ColorSelectorSector(
								rotation: -45.0,
								offsetX: 5.0,
								offsetY: 0.0,
								selected: (viewModel.appColor == "Trevor"),
								color: CharacterColor("Trevor")
							)
							//CUSTOM
							ColorSelectorSector(
								rotation: 45.0,
								offsetX: 0.0,
								offsetY: 5.0,
								selected: (viewModel.appColor == "Custom"),
								color: viewModel.colorPickerColor
							)
						}
						// COLOR SELECTOR BUTTONS
						ZStack {
							//FRANKLIN
							Button {
								viewModel.appColor = "Franklin"
							} label: {
								ColorSelectorName(
									name: "Franklin",
									selected: (viewModel.appColor == "Franklin"),
									color: CharacterColor("Franklin")
								)
							}
							.offset(
								x: 0.0,
								y: -100.0
							)
							//MICHAEL
							Button {
								viewModel.appColor = "Michael"
							} label: {
								ColorSelectorName(
									name: "Michael",
									selected: (viewModel.appColor == "Michael"),
									color: CharacterColor("Michael")
								)
							}
							.offset(
								x: -90.0,
								y: 0.0
							)
							//TREVOR
							Button {
								viewModel.appColor = "Trevor"
							} label: {
								ColorSelectorName(
									name: "Trevor",
									selected: (viewModel.appColor == "Trevor"),
									color: CharacterColor("Trevor")
								)
							}
							.offset(
								x: 90.0,
								y: 0.0
							)
							//CUSTOM
							Button {
								viewModel.appColor = "Custom"
							} label: {
								ColorSelectorName(
									name: "Custom",
									selected: (viewModel.appColor == "Custom"),
									color: viewModel.colorPickerColor
								)
							}
							.offset(
								x: 0.0,
								y: 120.0
							)
							.overlay(
								ColorPicker(
									"", // label
									selection: $viewModel.colorPickerColor,
									supportsOpacity: false
								)
								.labelsHidden()
								.offset(
									x: 0.0,
									y: 35.0
								)
								.scaleEffect(2)
								.opacity(1.0)
								.onChange(of: viewModel.colorPickerColor) { newColor in
									customColor = newColor
								}
							)
						}
					}
					.font(
						.system(
							size: CGFloat(integerLiteral: 30),
							weight: .bold
						)
					)
					.frame(width: 300.0, height: 300.0)
					.padding(
						.top
					)
					
					Spacer()
					
					Divider()
						.overlay(.gray)
					
					//BACKGROUND IMAGE
					Text("BACKGROUND IMAGE")
						.fontWeight(.bold)
						.foregroundColor(
							Color(
								red: 0.18,
								green: 0.41,
								blue: 0.72
							)
						)
					ZStack(alignment: .topTrailing) {
						//BACKGROUND IMAGE PICKER
						PhotosPicker(
							selection: $backgroundImagePicker.imageSelection,
							matching: .images,
							photoLibrary: .shared()
						) {
							BackgroundImage(
								pickerView: true,
								bgUIImage: customBackgroundUIImage// == nil ? backgroundImagePicker.uiImage : customBackgroundUIImage
							)
							.frame(
								width: 250.0,
								height: 400.0
							)
							.overlay(
								RoundedRectangle(
									cornerRadius: 20.0
								)
								.stroke(
									.white,
									lineWidth: 2.0
								)
							)
							.clipShape(
								RoundedRectangle(
									cornerRadius: 20.0
								)
							)
						}
						.onChange(of: backgroundImagePicker.uiImage) { newUIImage in
							customBackgroundUIImage = newUIImage
							viewModel.backgroundUIImage = customBackgroundUIImage
						}
						
						//DELETE BACKGROUND IMAGE
						Button {
							UIImage.removeImage(fileName: customBackgroundFileName)
							customBackgroundUIImage = nil
							viewModel.backgroundUIImage = customBackgroundUIImage
							print("DELETE CUSTOM IMAGE")
						} label: {
							Image(systemName: "xmark")
								.padding([.top, .trailing], 10.0)
								.foregroundColor(
									CharacterColor(viewModel.appColor)
								)
						}
					}
					
					Spacer()
					
					Divider()
						.overlay(.gray)
					
					//RADIO STATION FAVORITES
					Text("RADIO STATION FAVORITES")
						.fontWeight(.bold)
						.foregroundColor(
							Color(
								red: 0.18,
								green: 0.41,
								blue: 0.72
							)
						)
					VStack {
						ForEach(Array(favorite.keys), id: \.self) {stationName in
							Button {
								viewModel.favoriteStation.toggle()
								favorite[stationName] = !(favorite[stationName] ?? false)
							} label: {
								HStack {
									Text(stationName)
									
									Spacer()
									
									Image(systemName: (favorite[stationName] ?? false) ? "checkmark" : "square")
										.symbolRenderingMode(.palette)
										.foregroundStyle((favorite[stationName] ?? false) ? .black : .white)
										.frame(width:20,height:20)
										.background(.white)
								}
							}
							
						}
					}
					.padding(.horizontal, 20)
					
					Spacer()
					
					//CLOSE BUTTON
					Button {
						AudioPlayer.settingsView.toggle()
						
						//COLOR
						customColor = viewModel.colorPickerColor
						UserDefaults.standard.set(viewModel.appColor, forKey:"appColor")
						customColorData.saveColor(
							color: viewModel.colorPickerColor
						)
						
						//IMAGE
						customBackgroundUIImage?.saveImage(imageName: customBackgroundFileName)
						
						//FAVORITE STATIONS
						
						
					} label: {
						HStack{
							Text("Close")
								.font(
									.system(
										size: 20,
										weight: .bold
									)
								)
								.foregroundColor(
									Color(
										red: 0.18,
										green: 0.41,
										blue: 0.72
									)
								)
						}
						.frame(
							maxWidth: 300,
							minHeight: 50
						)
					}
					.buttonStyle(.borderedProminent)
					.tint(.gray)
					
					Spacer()
				}
				.frame(
					maxWidth: .infinity
				)
				.font(
					.system(
						size: CGFloat(integerLiteral: 20),
						weight: .bold
					)
				)
			}
		}
		.preferredColorScheme(
			.dark
		)
		.persistentSystemOverlays(
			.hidden
		)
	}
}

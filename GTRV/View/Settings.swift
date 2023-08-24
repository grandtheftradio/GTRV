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
					//COLOR SELECTOR
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
					
					ZStack(alignment: .topTrailing) {
						//BACKGROUND IMAGE PICKER
						PhotosPicker(
							selection: $backgroundImagePicker.imageSelection,
							matching: .images,
							photoLibrary: .shared()
						) {
							BackgroundImage(
								pickerView: true,
								bgUIImage: customBackgroundUIImage == nil ? backgroundImagePicker.uiImage : customBackgroundUIImage
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
					
					//SAVE BUTTON
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
						
					} label: {
						Text("Save")
							.font(
								.system(
									size: 20,
									weight: .bold
								)
							)
							.foregroundColor(
								.white
							)
					}
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

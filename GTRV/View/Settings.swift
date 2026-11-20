//
//  Settings.swift
//  GTRV
//
//  Created by grandtheftradio on 8/24/23.
//

import SwiftUI
import PhotosUI
import UniformTypeIdentifiers

struct Settings: View {
	
	@State var AudioPlayer: AudioPlayerDelegate
	@State var backgroundImagePicker: BackgroundImagePicker
	@StateObject var viewModel: ViewModel
	@ObservedObject var assetManager: AssetManager = AssetManager.shared
	@State private var showFolderPicker: Bool = false
	
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
					
					// ASSET FOLDER SELECTOR
					VStack(spacing: 12.0) {
						Text("ASSET FOLDER")
							.font(
								.system(
									size: 18,
									weight: .bold
								)
							)
							.foregroundColor(
								CharacterColor(viewModel.appColor)
							)
						
						Text(assetManager.statusDescription)
							.font(
								.system(
									size: 14,
									weight: .medium
								)
							)
							.foregroundColor(
								.white.opacity(0.85)
							)
							.multilineTextAlignment(.center)
							.padding(.horizontal, 20.0)
						
						HStack(spacing: 15.0) {
							Button {
								showFolderPicker = true
							} label: {
								HStack {
									Image(systemName: "folder")
									Text(assetManager.hasCustomFolder ? "Change Folder" : "Select Folder")
								}
								.font(
									.system(
										size: 16,
										weight: .bold
									)
								)
								.foregroundColor(
									.white
								)
								.padding(.horizontal, 16.0)
								.padding(.vertical, 8.0)
								.background(
									CharacterColor(viewModel.appColor).opacity(0.3)
								)
								.cornerRadius(10.0)
								.overlay(
									RoundedRectangle(cornerRadius: 10.0)
										.stroke(
											CharacterColor(viewModel.appColor),
											lineWidth: 1.5
										)
								)
							}
							
							if assetManager.hasCustomFolder {
								Button {
									assetManager.clearAssetFolder()
								} label: {
									Text("Reset")
										.font(
											.system(
												size: 14,
												weight: .bold
											)
										)
										.foregroundColor(
											.red.opacity(0.8)
										)
										.padding(.horizontal, 12.0)
										.padding(.vertical, 8.0)
										.background(
											Color.red.opacity(0.15)
										)
										.cornerRadius(10.0)
										.overlay(
											RoundedRectangle(cornerRadius: 10.0)
												.stroke(
													Color.red.opacity(0.4),
													lineWidth: 1.0
												)
										)
								}
							}
						}
						
						Text("Place 'Audio' and 'Assets' folders inside the selected folder, or directly into the app's GTRV folder in the Files app.")
							.font(
								.system(
									size: 11,
									weight: .regular
								)
							)
							.foregroundColor(
								.gray
							)
							.multilineTextAlignment(.center)
							.padding(.horizontal, 30.0)
					}
					.padding(.vertical, 10.0)
					.fileImporter(
						isPresented: $showFolderPicker,
						allowedContentTypes: [.folder]
					) { result in
						switch result {
						case .success(let url):
							assetManager.setAssetFolder(url: url)
						case .failure(let error):
							print("Error selecting folder: \(error.localizedDescription)")
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

//
//  AppState.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import Foundation

class AppState: ObservableObject{
    @Published var firstLaunch = true
    @Published var currentScreen = ScreenID.mainScreen.rawValue
}

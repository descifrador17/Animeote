//
//  AnimeoteApp.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

@main
struct AnimeoteApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var quoteViewModel: QuoteViewModel = QuoteViewModel()
    @StateObject var appState: AppState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(quoteViewModel)
                .environmentObject(appState)
        }
    }
}

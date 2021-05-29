//
//  ContentView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //MARK: - Properties
    @EnvironmentObject var appState: AppState
    
    //MARK: - Body
    var body: some View {
        if appState.currentScreen == ScreenID.mainScreen.rawValue {
            MainScreen()
        }
        else if appState.currentScreen == ScreenID.infoScreen.rawValue {
            InfoView()
        }
        else if appState.currentScreen == ScreenID.savedScreen.rawValue{
            SavedQuotesView()
        }
        
    }
    
    //MARK: - Functions
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(QuoteViewModel())
    }
}

//
//  HeaderView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var appState: AppState
    
    var title: String
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeInOut){
                    appState.currentScreen = ScreenID.mainScreen.rawValue
                }
            }, label: {
                HStack{
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(myAppAccentColor)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 18)
                        
                }
                .background(backgroundColor)
                .cornerRadius(100, corners: [.topRight, .bottomRight])
                .shadow(color: lowerShadow, radius: 10, x: 6, y: 6)
                .shadow(color: upperShadow, radius: 10, x: -6, y: -6)
            })
            
            Spacer()
            
            HStack{
                
            }
            Text(title)
                .font(.title)
                .foregroundColor(myAppAccentColor)
                .padding(.vertical, 14)
                .padding(.horizontal, 24)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Info")
            .previewLayout(.sizeThatFits)
            .background(Color.blue)
    }
}

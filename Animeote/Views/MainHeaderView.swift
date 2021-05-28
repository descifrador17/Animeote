//
//  MainHeaderView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

struct MainHeaderView: View {
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeInOut){
                    print("Info Clicked")
                }
            }, label: {
                HStack{
                    Image(systemName: "info.circle")
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
            Button(action: {
                withAnimation(.easeInOut){
                    print("Liked Clicked")
                }
            }, label: {
                HStack{
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .foregroundColor(myAppAccentColor)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 18)
                }
                .background(backgroundColor)
                .cornerRadius(100, corners: [.topLeft, .bottomLeft])
                .shadow(color: lowerShadow, radius: 10, x: 6, y: 6)
                .shadow(color: upperShadow, radius: 10, x: -6, y: -6)
                
                    
            })
        }
        .edgesIgnoringSafeArea(.all
        )
    }
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MainHeaderView()
            .previewLayout(.sizeThatFits)
            .background(Color.blue)
    }
}

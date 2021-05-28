//
//  RoundButton.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

struct RoundButton: View {
    
    var iconName: String
    var buttonSize: CGFloat
    
    var body: some View {
        VStack(alignment: .center){
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .scaleEffect(0.4, anchor: .center)
                .foregroundColor(myAppAccentColor)
        }
        .frame(width: buttonSize, height: buttonSize)
        .background(backgroundColor)
        .clipShape(Circle())
        .shadow(color: lowerShadow, radius: 15, x: 10, y: 10)
        .shadow(color: upperShadow, radius: 15, x: -10, y: -10)
        
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton(iconName: "heart", buttonSize: 100)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

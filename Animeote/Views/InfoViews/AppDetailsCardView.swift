//
//  AppDetailsCardView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct AppDetailsCardView: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading,spacing: 10){
                
                Text("Animeote")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .fontWeight(.medium)
                
                //Anime Character
                Text("Anime + Quote -> Animeote. With this I present you the App made with love for Anime lovers.\nSave your favourite character's badass dialogue with just one click")
                    .foregroundColor(myAppAccentColor)
                    .font(.footnote)
                    .fontWeight(.black)
                
                Text("Thanks to Animechan for providing such a vast database ♥️")
                    .foregroundColor(myAppAccentColor)
                    .font(.footnote)
                    .fontWeight(.black)
                
                SourceLinkView(title: "Link to API", linkTitle: "Animechan", link: "https://animechan.vercel.app/")
                    .padding(.vertical, 10)
            }//VSTACK
            Spacer()
        }//HSTACK
        .padding(.horizontal,16)
        .padding(.vertical,16)
        .frame(minWidth: 300)
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(color: lowerShadow, radius: 10, x: 6, y: 6)
        .shadow(color: upperShadow, radius: 10, x: -6, y: -6)
    }
}

struct AppDetailsCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppDetailsCardView()
                .previewLayout(.sizeThatFits)
                .padding()
            AppDetailsCardView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}

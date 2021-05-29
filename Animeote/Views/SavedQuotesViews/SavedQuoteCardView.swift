//
//  SavedQuoteCardView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct SavedQuoteCardView: View {
    
    var animeQuote: QuoteModel
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment:.leading,spacing: 10){
                    //Anime Name
                    Text(animeQuote.anime ?? "")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    //Anime Quote
                    Text(animeQuote.quote ?? "")
                        .font(.title3)
                        .italic()
                        .fontWeight(.medium)
                    
                    //Anime Character
                    Text(animeQuote.character ?? "")
                        .font(.subheadline)
                        .fontWeight(.black)
                }//VSTACK
                Spacer()
            }//HSTACK
            .padding(.horizontal,16)
            .padding(.vertical,16)
            
        }//VSTACK
        .frame(minWidth: 300)
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(color: lowerShadow, radius: 10, x: 6, y: 6)
        .shadow(color: upperShadow, radius: 10, x: -6, y: -6)
    }
}

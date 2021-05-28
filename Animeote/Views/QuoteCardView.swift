//
//  QuoteCardView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

struct QuoteCardView: View {
    
    var animeName = "Naruto"
    var animeQuote = "\"Lorem Ipsum this is very long quote but i dont care\""
    var animeCharacter = "Kakashi"
    
    var body: some View {
        VStack{
            Spacer()
            
            
            HStack{
                VStack(alignment:.leading,spacing: 10){
                    //Anime Name
                    Text(animeName)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    //Anime Quote
                    Text(animeQuote)
                        .font(.title2)
                        .italic()
                        .fontWeight(.medium)
                }//VSTACK
                Spacer()
            }//HSTACK
            .padding(.horizontal,16)
            .padding(.bottom,6)
            
            
            VStack(alignment: .trailing){
                HStack{
                    Spacer()
                    
                    //Anime Character Name
                    Text("- \(animeCharacter)")
                        .font(.system(size: 16, weight: .light, design: .default))
                }//HSTACK
                .padding(.horizontal, 16)
            }//VSTACK
            
            Spacer()
        }//VSTACK
        .frame(minWidth: 300, maxHeight: 480)
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(color: lowerShadow, radius: 15, x: 10, y: 10)
        .shadow(color: upperShadow, radius: 15, x: -10, y: -10)
        .onTapGesture(count: 2, perform: {
            print("Hahahahhahahaha")
        })
    }
}

struct QuoteCardView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCardView()
            .previewLayout(.sizeThatFits)
            .padding()
        QuoteCardView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

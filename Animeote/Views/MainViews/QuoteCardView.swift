//
//  QuoteCardView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

struct QuoteCardView: View {
    
    @EnvironmentObject var quoteViewModel: QuoteViewModel
    
    var body: some View {
        VStack{
            Spacer()
            
            HStack{
                VStack(alignment:.leading,spacing: 10){
                    //Anime Name
                    Text(quoteViewModel.quote.anime)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    //Anime Quote
                    Text(quoteViewModel.quote.quote)
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
                    Text("\(quoteViewModel.quote.character)")
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

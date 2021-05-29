//
//  SavedQuotesView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct SavedQuotesView: View {
    
    @FetchRequest(entity: QuoteModel.entity(), sortDescriptors:[]) private var quotes: FetchedResults<QuoteModel>
    
    var body: some View {
        ZStack{
            //Background
            BlankView(color: backgroundColor)
            
            //Data
            VStack{
                HeaderView(title: "Liked Quotes")
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: rowSpacing, pinnedViews: [], content: {
                        ForEach(quotes) { quote in
                            SavedQuoteCardView(animeQuote: quote)
                                .padding(.vertical,15)
                                .padding(.horizontal,20)
                            
                        }
                    })//GRID
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                })//SCROLL
                
                Spacer()
                
                
                
            }//VSTACK
        }//ZSTACK
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SavedQuotesView_Previews: PreviewProvider {
    static var previews: some View {
        SavedQuotesView()
            .preferredColorScheme(.dark)
    }
}

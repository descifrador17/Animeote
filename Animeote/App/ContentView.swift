//
//  ContentView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContextanviewContextAn
    @EnvironmentObject var quoteViewModel: QuoteViewModel

    @FetchRequest(entity: QuoteModel.entity(), sortDescriptors:[]) private var items: FetchedResults<QuoteModel>

    var body: some View {
        ZStack{
            //TOP HEADER
            
            BlankView(color: backgroundColor)
            
            VStack{
                MainHeaderView()
                    .padding(.bottom,50)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                QuoteCardView()
                    .padding(.horizontal, 50)
                    .padding(.bottom, 50)
                    .onTapGesture(count: 2, perform: {
                        likeQuote()
                    })
                    
             
                Button(action: {
                    withAnimation(.easeInOut){
                        likeQuote()
                    }
                }, label: {
                    RoundButton(iconName: quoteViewModel.isQuoteSaved ? "hand.thumbsup.fill" : "hand.thumbsup", buttonSize: 100)
                })
                
                
                HStack{
                    Button(action: {
                        withAnimation(.easeInOut){
                            getPrevQuote()
                        }
                    }, label: {
                        RoundButton(iconName: "arrowshape.turn.up.left", buttonSize: 75)
                    })
                    Spacer()
                    Button(action: {
                        withAnimation(.easeInOut){
                            loadQuote()
                        }
                    }, label: {
                        RoundButton(iconName: "shuffle", buttonSize: 75)
                    })
                    
                }
                .padding(.horizontal,50)
                .padding(.bottom,20)
            }//VSTACK
            .frame(maxWidth: 550)
        }//ZSTACK
        .onAppear(perform: loadQuote)
    }
    
    private func loadQuote(){
        quoteViewModel.getRandomQuote()
        
    }
    
    private func getPrevQuote(){
        quoteViewModel.getPrevQuote()
    }
    
    private func likeQuote(){
        quoteViewModel.saveQuote()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(QuoteViewModel())
    }
}

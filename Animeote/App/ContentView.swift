//
//  ContentView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>

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
                    
             
                Button(action: {
                    withAnimation(.easeInOut){
                        print("Likeeeeee Clicked")
                    }
                }, label: {
                    RoundButton(iconName: "hand.thumbsup", buttonSize: 100)
                })
                
                
                HStack{
                    Button(action: {
                        withAnimation(.easeInOut){
                            print("Back")
                        }
                    }, label: {
                        RoundButton(iconName: "arrowshape.turn.up.backward.fill", buttonSize: 75)
                    })
                    Spacer()
                    Button(action: {
                        withAnimation(.easeInOut){
                            print("Next")
                        }
                    }, label: {
                        RoundButton(iconName: "arrowshape.turn.up.right.fill", buttonSize: 75)
                    })
                    
                }
                .padding(.horizontal,50)
                .padding(.bottom,20)
            }//VSTACK
            .frame(maxWidth: 550)
        }
        .background(Color("backgroundColor"))
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

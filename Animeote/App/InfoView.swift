//
//  InfoView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack{
            //Background
            BlankView(color: backgroundColor)
            
            //Data
            VStack{
                HeaderView(title: "Info")
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                ScrollView{
                    
                    AppDetailsCardView()
                        .padding(.horizontal,20)
                        .padding(.bottom,20)
                        .padding(.top, 25)
                    
                    DevDetailsCardView()
                        .padding(.horizontal,20)
                        .padding(.vertical,10)
                }
                
                
                Spacer()
                
            }//VSTACK
        }//ZSTACK
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

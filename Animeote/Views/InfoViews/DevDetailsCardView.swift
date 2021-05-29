//
//  DevDetailsCardView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct DevDetailsCardView: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading,spacing: 10){
                
                Text("Developed by:")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Text("Utkarsh Dayal")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .fontWeight(.medium)
                
                //Anime Character
                Text("descifrador")
                    .foregroundColor(myAppAccentColor)
                    .font(.subheadline)
                    .fontWeight(.black)
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

struct DevDetailsCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DevDetailsCardView()
                .previewLayout(.sizeThatFits)
            DevDetailsCardView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

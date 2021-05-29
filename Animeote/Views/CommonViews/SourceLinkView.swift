//
//  SourceLinkView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    var title: String
    var linkTitle: String
    var link: String
    
    var body: some View {
        Group{
            HStack{
                Text(title)
                Spacer()
                Link(linkTitle, destination: URL(string: link)!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            .padding()
        }
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(color: lowerShadow, radius: 6, x: 3, y: 3)
        .shadow(color: upperShadow, radius: 6, x: -3, y: -3)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(title: "Content Source", linkTitle: "Wikipedia", link: "https://www.google.com")
    }
}

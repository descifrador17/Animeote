//
//  BlankView.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

struct BlankView: View {
    
    var color: Color
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            Spacer()
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(color)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(color: backgroundColor)
    }
}

//
//  Constants.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//

import SwiftUI

let backgroundColor: Color = Color("backgroundColor")
let lowerShadow: Color = Color("lowerShadow")
let upperShadow: Color = Color("upperShadow")
let myAppAccentColor: Color = Color("AccentColor")

struct RoundedCorner: Shape{
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

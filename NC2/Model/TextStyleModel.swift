//
//  TextStyleModel.swift
//  NC2
//
//  Created by Davide Ragosta on 15/12/22.
//

import Foundation
import SwiftUI

struct TextStyle1 : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title) .bold()
            .foregroundColor(Color.accentColor)
            .frame(width: 300, height: 20)

    }
}

struct TextStyle2 : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title) .bold()
            .foregroundColor(Color.accentColor)
            .frame(width: 300, height: 20)
            .background(RoundedRectangle(cornerRadius: 20).fill(.white) .opacity(1)
                .frame(width: 180, height: 80)
                .shadow(color: .gray, radius: 5, y:2))
    }
}

//
//  ButtonStyleModel.swift
//  NC2
//
//  Created by Davide Ragosta on 15/12/22.
//

import Foundation
import SwiftUI

struct Button1: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.semibold)
            .frame(width: 300, height: 125)
            .foregroundColor(.white)
            .background(Color.accentColor.opacity(0.90))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black, radius: 5, y:4)
            .padding()
    }
}

struct Button2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.semibold)
            .frame(width: 300, height: 125)
            .foregroundColor(.white)
            .background(Color.mint.opacity(0.90))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black, radius: 5, y:4)
            .padding()
    }
}

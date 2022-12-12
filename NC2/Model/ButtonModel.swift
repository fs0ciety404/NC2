//
//  ButtonModel.swift
//  NC2
//
//  Created by Davide Ragosta on 09/12/22.
//

import Foundation
import SwiftUI

struct ButtonStyle0: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .buttonStyle(.bordered)
            .frame(alignment: .center)
            .background(Color("72DDF7"))
            .foregroundColor(.white)
    }
}

struct MyButtonStyle: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: { configuration.trigger() }) {
            configuration.label
                .tint(Color("72DDF7"))
        }
        .buttonStyle(.bordered)
    }
}

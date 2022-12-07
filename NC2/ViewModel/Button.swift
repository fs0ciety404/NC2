//
//  Button.swift
//  NC2
//
//  Created by Stefano Giacobbe on 07/12/22.
//

import Foundation
import SwiftUI

struct EmotionsButton: View {
    @State var showModal = false
    var color: String
    var text: String
    var body: some View {
        Button {
            showModal.toggle()
        } label: {
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 160, height: 170)
                .foregroundColor(Color(color))
                .shadow(radius: 5, y: 5)
                .overlay {
                    Text(text)
                        .foregroundColor(.black)
                }
                .fullScreenCover(isPresented: $showModal) {
                    EmotionsView()
                }
        }
    }
}

struct TipsButton: View {
    var action: String
    var color: String
    var text: String
    var body: some View {
        Button {
            print(action)
        } label: {
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 160, height: 170)
                .foregroundColor(Color(color))
                .shadow(radius: 5, y: 5)
                .overlay {
                    Text(text)
                        .foregroundColor(.black)
                }
        }
    }
}


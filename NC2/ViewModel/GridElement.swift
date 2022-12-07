//
//  GridElement.swift
//  NC2
//
//  Created by Stefano Giacobbe on 07/12/22.
//

import Foundation
import SwiftUI

struct GridElement: View {
    var image: String
    var text: String
    var body: some View {
        Button {
            print("Hello world")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                VStack(spacing: 20) {
                    Image(systemName: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                        .foregroundColor(.black)
                    Text(text)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                }
            }.frame(width: 180, height: 150)
        }
    }
}

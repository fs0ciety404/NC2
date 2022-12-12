//
//  TipVM.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import Foundation
import SwiftUI

struct TipShape: View {
    var tip: Tip
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 350, height: 150)
                .foregroundColor(Color("8093F1"))
                .opacity(0.5)
                .padding()
            Text(tip.text)
                .padding(.horizontal, 50)
                .font(.system(size: 15))
                .foregroundColor(.black)
        }
    }
}

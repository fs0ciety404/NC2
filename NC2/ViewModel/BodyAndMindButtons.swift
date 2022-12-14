//
//  BodyAndMindButtons.swift
//  NC2
//
//  Created by Stefano Giacobbe on 13/12/22.
//

import Foundation
import SwiftUI

struct MainButton: View {
    var text: String
    var icon: String
    var color: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(color))
                .opacity(0.5)
                .frame(width: 340, height: 160)
                .shadow(radius: 5, y:10)
            VStack(spacing: 30) {
                Text(text)
                Image(systemName: icon)
            }
            .font(.system(size: 40))
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.black)
        }
    }
}


//struct MainButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        TipsButton(text: "sium", icon: "brain", color: "8093F1")
//    }
//}

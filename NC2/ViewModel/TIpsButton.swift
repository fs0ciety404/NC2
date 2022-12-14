//
//  TIpsButton.swift
//  NC2
//
//  Created by Stefano Giacobbe on 13/12/22.
//

import Foundation
import SwiftUI

struct NauseaButton: View {
    @State var isExpanded = false
    var text: String
    var icon: String
    var color: String
    var body: some View {
            VStack {
                Button {
                    isExpanded.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(color))
                            .opacity(0.5)
                            .frame(width: 340, height: 100)
                            .shadow(radius: 5, y:10)
                        HStack(spacing: 40) {
                            Image(systemName: icon)
                            Text(text)
                        }
                        .padding(.horizontal, 50)
                        .font(.system(size: 30))
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    }
                }
                if isExpanded == true {
                    TipsText(titolo: "First Trimester", description: "Nausea and vomiting are frequent symptoms throughout the first trimester. To assist manage these symptoms, eat little, frequent meals rather than three large ones. Avoid hot, fatty, or acidic foods in favor of crackers, bananas, and rice, which are strong in protein and complex carbs. It may also be beneficial to avoid strong odors that can cause nausea, as well as to stay hydrated by drinking enough of fluids.")
                    TipsText(titolo: "Second Semester", description: "Nausea and vomiting may lessen or go entirely during the second trimester. If you still have these symptoms, try eating small, frequent meals and avoiding trigger foods. It may also assist to avoid lying down after eating, as well as to eat slowly and thoroughly. Some women believe that ginger or peppermint might assist with nausea, so try drinking ginger tea or nibbling on peppermint sweets")
                    TipsText(titolo: "Third Trimester", description: "Nausea and vomiting may reappear in the third trimester. Try the same tactics as in the first trimester to assist control these symptoms, such as eating small, frequent meals and avoiding trigger foods. It may also assist to avoid lying down after eating, as well as to eat slowly and thoroughly. Some women find that acupressure relieves nausea, so you can try wearing acupressure wristbands or applying acupressure points on your wrist or hand.")
                }
            }
            .animation(.spring())
    }
}

struct TipsButton_Previews: PreviewProvider {
    static var previews: some View {
        NauseaButton(text: "Nausea", icon: "tropicalstorm", color: "8093F1")
    }
}

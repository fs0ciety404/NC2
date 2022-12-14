//
//  TipsButton2.swift
//  NC2
//
//  Created by Stefano Giacobbe on 14/12/22.
//

import SwiftUI
import Foundation

struct BreastButton: View {
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
                    TipsText(titolo: "Wear a supportive bra", description: "By providing support and keeping your breasts from bouncing or jiggling, a supportive bra can help lessen breast pain and tenderness. Avoid underwire bras, which can put pressure on your breasts, and instead look for a bra that fits properly and gives appropriate support. ")
                    TipsText(titolo: "No Hot Showers", description: "Hot showers and baths should be avoided since they can make your breasts more sensitive and sore. Take warm showers or baths instead, or use a cold compress to your breasts to assist minimize swelling and discomfort.")
                    TipsText(titolo: "Warm Compress", description: "Using a warm compress can help relieve breast pain and soreness. Soak a clean towel in warm water, wring it out, and apply it to your breasts for a few minutes to form a warm compress. Repeat as required to help relieve pain.")
                }
            }
            .animation(.spring())
    }
}



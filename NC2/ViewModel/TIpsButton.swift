//
//  TIpsButton.swift
//  NC2
//
//  Created by Stefano Giacobbe on 13/12/22.
//

import Foundation
import SwiftUI

struct TipsButton: View {
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
                /// Model of tips
                //                Button {
                //                    print("")
                //                } label: {
                //                    Capsule()
                //                        .frame(width: 200, height: 70)
                //                }
                //                Button {
                //                    print("")
                //                } label: {
                //                    Capsule()
                //                        .frame(width: 200, height: 70)
                //                }
                //                Button {
                //                    print("")
                //                } label: {
                //                    Capsule()
                //                        .frame(width: 200, height: 70)
                //                }
                //            }
                //        }
                //        .animation(.spring())
            }
        }
    }
}

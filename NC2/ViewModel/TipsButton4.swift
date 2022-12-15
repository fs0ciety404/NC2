//
//  TipsButton4.swift
//  NC2
//
//  Created by Stefano Giacobbe on 15/12/22.
//

import Foundation
import SwiftUI

struct PsychButton: View {
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
                    TipsText(titolo: "Do what you love", description: "Make time for relaxing activities that you enjoy, such as reading a book, listening to music, or having a warm bath.")
                    TipsText(titolo: "Relax", description: "Set aside time for yourself and avoid unneeded pressures to try to lessen stress in your life. This may imply declining social commitments or transferring tasks to others.")
                    TipsText(titolo: "Find support", description: "Seek help from a therapist or counselor who specializes in pregnancy and postpartum mental health. They can assist you in developing coping techniques and offer emotional support.")
                    TipsText(titolo: "Medicines", description: "If you are suffering from depression or anxiety, consult your doctor about medication. Many antidepressants are safe to use during pregnancy, but it's crucial to talk to your doctor about the potential dangers and benefits.")
                    TipsText(titolo: "Community", description: "Consider attending a pregnancy or new mother's support group. These groups can give you a sense of community and link you with others who are going through similar things. ")
                }
            }
            .animation(.spring())
    }
}

//
//  EmotionsView.swift
//  NC2
//
//  Created by Stefano Giacobbe on 07/12/22.
//

import SwiftUI

struct EmotionsView: View {
    var body: some View {
        ScrollView {
            Text("How do you feel today?")
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Grid {
                GridRow {
                    GridElement(image: "sun.max", text: "Happy")
                    GridElement(image: "moon", text: "Sleepy")
                }
                GridRow {
                    GridElement(image: "bolt", text: "Active")
                    GridElement(image: "cloud.bolt", text: "Angry")
                }
                GridRow {
                    GridElement(image: "figure.yoga", text: "Balanced")
                    GridElement(image: "water.waves", text: "Relaxed")
                }
                GridRow {
                    GridElement(image: "bolt", text: "Active")
                    GridElement(image: "cloud.bolt", text: "Angry")
                }
                GridRow {
                    GridElement(image: "sun.max", text: "Happy")
                    GridElement(image: "moon", text: "sleepy")
                }
                GridRow {
                    GridElement(image: "figure.yoga", text: "Balanced")
                    GridElement(image: "water.waves", text: "Relaxed")
                }
            }.foregroundColor(Color("72DDF7"))
        }
    }
}

struct EmotionsView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionsView()
    }
}

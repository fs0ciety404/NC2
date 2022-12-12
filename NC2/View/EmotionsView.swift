//
//  EmotionsView.swift
//  NC2
//
//  Created by Stefano Giacobbe on 07/12/22.
//

import SwiftUI

struct EmotionsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedDate: Date = Date()
    var body: some View {
        VStack {
            Dismiss()
            TitleName(name: "How do you feel today?")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    GridElement(image: "sun.max", text: "Happy")
                    GridElement(image: "moon", text: "Sleepy")
                    GridElement(image: "bolt", text: "Active")
                    GridElement(image: "cloud.bolt", text: "Angry")
                    GridElement(image: "figure.yoga", text: "Balanced")
                    GridElement(image: "water.waves", text: "Relaxed")
                }
                .foregroundColor(Color("8093F1"))
                .padding(.horizontal)
            }
            Spacer()
            TitleName(name: "Look at your other days")
            DatePicker("Date", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(.graphical)
                .padding(.horizontal)
                .accentColor(Color("8093F1"))
            Spacer(minLength: 100)
        }
    }
}

struct EmotionsView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionsView()
    }
}

//
//  ContentView.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    @State private var timeRemaining = 100
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            
            VStack{
                //Text and Counter
                HStack(){
                    Text("Expected childbirth in...")
                        .foregroundColor(Color("8093F1"))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                }
                .padding()
                
                //Buttons
                HStack {
                    EmotionsButton(color: "72DDF7", text: "How do you feel today?")
                    Spacer()
                    TipsButton(action: "hello world", color: "72DDF7", text: "Discover our tips for you")
                }.padding(.horizontal, 10)
                //Calendar
                VStack{
                    DatePicker(
                        "Start Date",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                    .padding(5)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .accentColor(Color("8093F1"))
                    .datePickerStyle(.graphical)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("8093F1"), lineWidth: 4))
                    .padding()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

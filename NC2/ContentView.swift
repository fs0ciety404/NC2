//
//  ContentView.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    
    var body: some View {
        ZStack {
            VStack{
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .padding(10)
                .accentColor(Color("8093F1"))
                .datePickerStyle(.graphical)
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

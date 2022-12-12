//
//  ContentView.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    @State private var showingSheet = false
    
    
    var body: some View {
        ZStack {
            
            VStack{
                //buttons and text
                HStack(){
                    Text("Expected childbirth in...")
                        .foregroundColor(Color("8093F1"))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                }
                .padding()
                
                HStack{
                    VStack(alignment: .center){
                        Button("How do you fill today?") {
                            showingSheet.toggle()
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $showingSheet) {
                            EmojiPicker()
                        }
                    }
                    .padding()
                    
                    Spacer()
                    
                    VStack(alignment: .center){
                        Button("How do you fill today?") {
                            showingSheet.toggle()
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $showingSheet) {
                            EmojiPicker()
                        }
                    }
                    .padding()
                    
                }

                
                
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

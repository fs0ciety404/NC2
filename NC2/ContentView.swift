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
        
        NavigationStack{
            
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.15)
                    .ignoresSafeArea()
                
                Text("")
                    .toolbar(content: {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {()
                            }) {
                                Image(systemName: "info.circle")
                                    .imageScale(.large)
                            }
                        }
                    })
                ScrollView{
                    VStack (spacing:20){
                        
                        
                        
                        buttonsView()
                        
        
                       
                        
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

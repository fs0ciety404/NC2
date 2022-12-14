//
//  mainView.swift
//  NC2
//
//  Created by Ludovica Marte on 14/12/22.
//

import SwiftUI


struct mainView: View {
    
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
                
                
                
                buttonsView()
            }
        }
    }
}
struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

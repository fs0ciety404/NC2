//
//  bodyView.swift
//  NC2
//
//  Created by Ludovica Marte on 12/12/22.
//

import SwiftUI

struct bodyView: View {
    var body: some View{
        NavigationView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.20)
                    .ignoresSafeArea()
                
               
                
                VStack{
                    
                    
                    Text("Body View")
                }
            }
            
        }
    }
}
struct bodyView_Previews: PreviewProvider {
    static var previews: some View {
        bodyView()
    }
}

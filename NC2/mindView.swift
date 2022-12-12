//
//  feelingsView.swift
//  NC2
//
//  Created by Ludovica Marte on 10/12/22.
//

import SwiftUI

struct mindView: View {
    var body: some View{
        NavigationView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.20)
                    .ignoresSafeArea()
                
               
                
                VStack{
                    
                    
                    Text("Mind View")
                }
            }
            
        }
    }
}
            
struct mindView_Previews: PreviewProvider {
    static var previews: some View {
        mindView()
    }
}

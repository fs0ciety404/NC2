//
//  ContentView.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var date = Date()
    var body: some View {
        NavigationStack{
            ButtonsView()
                .background {
                    Background()
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//MARK: background
struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.15)
            .ignoresSafeArea(.all)
    }
}

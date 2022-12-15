//
//  GradientModel.swift
//  NC2
//
//  Created by Davide Ragosta on 15/12/22.
//


import SwiftUI


struct GradientModel: View{
    var body: some View{
        
        LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.15)
            .ignoresSafeArea()
        
    }
}

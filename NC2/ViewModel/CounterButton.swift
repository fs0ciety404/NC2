//
//  CounterButton.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import Foundation
import SwiftUI

struct CounterButton: View {
    @State var showdatePicker = false
    @State var selectedDate = Date()
    @AppStorage("counter") var calculateCountdown: Int = 0
    var body: some View {
        Button {
            showdatePicker.toggle()
        } label: {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .opacity(0.25)
                        .frame(width: 370, height: 100)
                        .shadow(radius: 10, y: 0)
                    Text("\(calculateCountdown(from:selectedDate))")
                        .font(.title)
                        .font(.system(size: 0))
                        .foregroundColor(.black)
                        .sheet(isPresented: $showdatePicker) {
                            CounterView(selectedDate: $selectedDate)
                        }
                }
                Text("days")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
            }
        }
        
    }
        func calculateCountdown(from date: Date) -> Int {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.day], from: Date(), to: date)
            return components.day ?? 0
    }
}
    

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        CounterButton()
    }
}

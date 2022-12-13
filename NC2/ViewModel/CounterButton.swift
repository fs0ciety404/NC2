//
//  CounterButton.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import Foundation
import SwiftUI

struct CounterButton: View {
    @State var showTestCounter = false
    @State var selectedDate = Date()
    @AppStorage("counter") var calculateDayDifference: Int = 0
    var body: some View {
        Button {
            showTestCounter.toggle()
        } label: {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .opacity(0.25)
                        .frame(width: 370, height: 100)
                        .shadow(radius: 10, y: 0)
                    Text("\(calculateDayDifference)")
                        .font(.title)
                        .font(.system(size: 0))
                        .foregroundColor(.black)
                        .sheet(isPresented: $showTestCounter) {
                            CounterView()
                        }
                }
                Text("days")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
            }
        }
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        CounterButton()
    }
}

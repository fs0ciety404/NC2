//
//  testcounter.swift
//  NC2
//
//  Created by Ludovica Marte on 12/12/22.
//


import SwiftUI

struct dayCountDownView : View {
    
    @State var nowDate: Date = Date()
    let referenceDate: Date = Date()
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }
    
    
    var body: some View {
        Text(countDownString(from: referenceDate, until: nowDate))
            .onAppear(perform: {
                let _ = self.timer
            })
    }
    
    func countDownString(from date: Date, until nowDate: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar
            .dateComponents([.day, .hour, .minute, .second]
                            ,from: nowDate,
                            to: date)
        return String(format: "%02dd",
                      components.day ?? 00)
    }
}


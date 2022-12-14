//
//  testcounter.swift
//  NC2
//
//  Created by Ludovica Marte on 12/12/22.
//


import SwiftUI

struct testcounterView : View {
    
    @State var nowDate: Date = Date()
    let referenceDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }
    
    var body: some View {
        Text(countDownString(from: referenceDate))
            .font(.largeTitle)
            .onAppear(perform: {
                _ = self.timer
            })
    }

    func countDownString(from date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar
            .dateComponents([.day, .hour, .minute, .second],
                            from: nowDate,
                            to: referenceDate)
        return String(format: "%02dd",
                      components.day ?? 00)
    }

}
struct mtestcounter_Previews: PreviewProvider {
    static var previews: some View {
        testcounterView(referenceDate: Date() )
    }
}

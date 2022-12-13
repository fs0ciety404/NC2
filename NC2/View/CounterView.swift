//
//  counter.swift
//  NC2
//
//  Created by Ludovica Marte on 12/12/22.
//

import SwiftUI

struct CounterView: View {
    @State var selectedDate = Date()
    @State var currentDate = Date()
    var body: some View {
        VStack {
            // Use a DatePicker to allow the user to select a new date
            DatePicker("", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(.wheel)
            // Display the day difference in a text label
            
            // Create a button to update the current date
            
        }
    }
    func calculateDayDifference() -> Int {
        let timeDifference = selectedDate.timeIntervalSince(currentDate)
        let daysDifference = timeDifference / 86400
        return Int(daysDifference)
    }
}



struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}

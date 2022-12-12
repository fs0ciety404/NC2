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

        // Create a function to calculate the difference in days between the selected and current dates
        func calculateDayDifference() -> Int {
            // Use the timeIntervalSince() method to calculate the difference between the two dates in seconds
            let timeDifference = selectedDate.timeIntervalSince(currentDate)

            // Divide the time difference by the number of seconds in a day to get the difference in days
            let daysDifference = timeDifference / 86400

            // Return the difference in days as an integer
            return Int(daysDifference)
        }

        var body: some View {
            VStack {
                // Use a DatePicker to allow the user to select a new date
                DatePicker("", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.wheel)

                // Display the day difference in a text label
               

                // Create a button to update the current date
                
            }
        }
    }


struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}

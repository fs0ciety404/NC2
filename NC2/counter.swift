//
//  counter.swift
//  NC2
//
//  Created by Ludovica Marte on 12/12/22.
//
/*

import SwiftUI

struct counter: View {
    
    @State var selectedDate = Date()
    @State var currentDate = Date()
    @Binding var isCounterVisible: Bool

     
    func calculateDayDifference() -> Int {
           
            let timeDifference = selectedDate.timeIntervalSince(currentDate)

            
            let daysDifference = timeDifference / 86400

           
            return Int(daysDifference)
        }

    var body: some View {
        VStack {
           
            
            DatePicker("", selection: $selectedDate, displayedComponents: .date)
                            .datePickerStyle(.wheel)
                            .padding(.trailing, 30)
                        
                        Button(action: {
                                   
                                   self.isCounterVisible.toggle
                               }) {
                                   Text("Close Counter")
                        }
                      
                    }
                }
            }

            struct Counter_Previews: PreviewProvider {
                static var previews: some View {
                    counter()
                }
            }
 */

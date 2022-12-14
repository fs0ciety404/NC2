//
//  datePicker.swift
//  NC2
//
//  Created by Ludovica Marte on 13/12/22.
//

import SwiftUI

struct datePicker: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var selectedDate: Date

        var body: some View {
            NavigationView {
                VStack {
                    DatePicker("", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(.wheel)
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("Select")
                    }
                }
            }
        }
    }



struct datePicker_Previews: PreviewProvider {
    static var previews: some View {
        datePicker(selectedDate: .constant(Date()))
    }
}

 


//
//  counter.swift
//  NC2
//
//  Created by Ludovica Marte on 12/12/22.
//

import SwiftUI

struct CounterView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedDate: Date
    @State var currentDate = Date()
    var body: some View {
        ZStack {
            Background()
            VStack {
                DatePicker("", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(.wheel)
                Button {
                    dismiss()
                } label: {
                    Text("Select")
                        .foregroundColor(Color("8093F1"))
                }
                
            }
        }
    }
}



struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(selectedDate: .constant(Date()))
    }
}

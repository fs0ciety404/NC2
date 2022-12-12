///
//  calendarView.swift
//  NC2
//
//  Created by Ludovica Marte on 07/12/22.
//

import SwiftUI
import EventKit
import CoreData


struct calendarView: View {
  
    @State var selectedDate: Date = Date()
    @State var selectedNotes: String = ""
    @State var dateString: String = ""
    @State var notes: String = ""
    @State var date: Date = Date()
    
    @Environment(\.managedObjectContext)
    var managedObjectContext

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.mint, Color.accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.15)

            VStack (spacing: 20){
                
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                ) .datePickerStyle(.graphical)
                        .frame(width: 360, height: 330)
                        .shadow(radius: 5, y:7)
                
                Divider()
                
                Text("Notes: \(dateString)")
                    .font(.title)
                    .foregroundColor(Color.accentColor)
                    .padding(.trailing, 270)

                        Text(selectedNotes)
                            .font(.body)
                            .frame(width: 330, height: 100)
                            .padding()
             }
        }.ignoresSafeArea()
    }
}




struct calendarView_Previews: PreviewProvider {
   static var previews: some View {
       calendarView()
    }
}

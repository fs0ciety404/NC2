//
//  testcounter.swift
//  NC2
//
//  Created by Ludovica Marte on 08/12/22.
//

import SwiftUI
import EventKit
import CoreData


struct noteView: View {
    @State  var date = Date()
    @State  var dateFormatter = DateFormatter()
    @State  var dateString = ""
    @State  var note = ""
    @State  var currentDate = Date()
    

  
    
    @Environment(\.managedObjectContext)
    var managedObjectContext
    
    init() {
        dateFormatter.dateFormat = "MMM d, yyyy"
        dateString = dateFormatter.string(from: date)
    }
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.15)
                .ignoresSafeArea()
            
            VStack {
                Text(currentDate, style: .date)
                            .onAppear {
                                self.currentDate = Date()
                            
                            } .foregroundColor(Color.accentColor)
                
                
                .font(.title)
                
                TextField("Enter your note here", text: $note)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    
                Button(action: {
                    let noteEntity = NSEntityDescription.entity(forEntityName: "Note", in: managedObjectContext)!
                    let newNote = NSManagedObject(entity: noteEntity, insertInto: managedObjectContext)
                    newNote.setValue(note, forKey: "text")
                    newNote.setValue(dateString, forKey: "date")
                    try! managedObjectContext.save()
                }) {
                    Text("Save")
                }
            }
        }
    }
}



struct noteView_Previews: PreviewProvider {
    static var previews: some View {
        noteView()
    }
}


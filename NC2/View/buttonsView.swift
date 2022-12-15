//
//  buttonsView.swift
//  NC2
//
//  Created by Ludovica Marte on 07/12/22.
//
import SwiftUI
import UIKit


struct buttonsView: View  {
    @State private var showdatePicker = false
    @State private var showmindView = false
    @State private var showbodyView = false
    @State private var textToDisplay = ""
    @State var selectedDate = Date()
    @AppStorage("counter") var calculateDays: Int = 0
    @State private var datePickerVisible = false
    
    
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                Text("Expected childbirth in")
                    .modifier(TextStyle1())
                
                Button(action: {
                    
                    self.showdatePicker = true
                }) {
                    Text(" \(calculateCountdown(from: selectedDate)) Days")
                    
                }
                .buttonStyle(Button1())
                .sheet(isPresented: $showdatePicker) {
                    datePicker(selectedDate: $selectedDate)
                    
                }
                
                Text("Discover our tips for you")
                    .modifier(TextStyle1())
                
                
                Button(action: {
                    self.showbodyView = true
                }) {
                    HStack{
                        Text("Body")
                        Image(systemName: "figure.mind.and.body")
                            .imageScale(.large)
                    }
                }
                .buttonStyle(Button1())
                .sheet(isPresented: self.$showbodyView) {
                    bodyView()
                }
                
                Button(action: {
                    self.showmindView = true
                }) {
                    HStack{
                        HStack{
                            Text("Mind")
                            Image(systemName: "brain")
                                .imageScale(.large)
                        }
                    }
                }
                .buttonStyle(Button2())
                .sheet(isPresented: self.$showmindView) {
                    mindView()
                }
            }
        }
    }
    
    func calculateCountdown(from date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: Date(), to: date)
        return components.day ?? 0
    }
    
}

struct buttonsView_Previews: PreviewProvider {
    static var previews: some View {
        buttonsView()
    }
}

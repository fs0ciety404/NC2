//
//  buttonsView.swift
//  NC2
//
//  Created by Ludovica Marte on 07/12/22.
//
import SwiftUI


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
            
            ZStack{
                
                VStack(spacing: 40){
                    
                    VStack(spacing: 30){
                        
                        Text("Expected childbirth in")
                            .font(.title) .bold()
                            .foregroundColor(Color.accentColor)
                            .frame(width: 300, height: 20)
                        
                        Button(action: {
                            
                            self.showdatePicker = true
                        }) {
                            Text(" \(calculateCountdown(from: selectedDate))")
                            
                        }.font(.largeTitle)  .bold()
                            .foregroundColor(.black)
                            .padding()
                            .sheet(isPresented: $showdatePicker) {
                                datePicker(selectedDate: $selectedDate)
                                
                            }
                            .background(RoundedRectangle(cornerRadius: 20).fill(.white) .opacity(1)
                                .frame(width: 180, height: 80)
                                .shadow(color: .gray, radius: 5, y:2))
                        
                        Text ("days")
                            .font(.title)
                            .padding(.bottom, 30)
                            .frame(width: 80, height: 30)
                    }
                    
                    VStack(spacing: 70){
                        
                        Text("Discover our tips for you")
                            .font(.title) .bold()
                            .foregroundColor(Color.accentColor)
                            .padding(.top, 150)
                        
                        
                        Button(action: {
                            
                            self.showbodyView = true
                        }) {
                            Text("Body")
                            Image(systemName: "figure.mind.and.body")
                                .imageScale(.large)
                        }.font(.title2) .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.accentColor).opacity(0.90)
                                .frame(width: 300, height: 125)
                                .shadow(color: .black, radius: 5, y:4))
                        
                            .sheet(isPresented: self.$showbodyView) {
                                bodyView()
                                
                            }
                        
                        Button(action: {
                            
                            self.showmindView = true
                        }) {
                            Text("Mind")
                            Image(systemName: "brain")
                                .imageScale(.large)
                        }.font(.title2) .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.mint).opacity(0.8)
                                .frame(width: 300, height: 125)
                                .shadow(color: .black, radius: 5, y:4))
                        
                            .sheet(isPresented: self.$showmindView) {
                                mindView()
                                
                            }.padding(.top, 25)
                        
                    } .frame(width: 380, height: 100)
                        .padding()
                    
                    Spacer()
                }
            }.padding(.top, 100)
            
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

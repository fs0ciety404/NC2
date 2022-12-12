//
//  buttonsView.swift
//  NC2
//
//  Created by Ludovica Marte on 07/12/22.
//
import SwiftUI
import Foundation


struct ButtonsView: View {
    @State private var showtestCounter = false
    @State private var showtipsView = false
    @State private var textToDisplay = ""
    @State var selectedDate = Date()
    @AppStorage("counter") var calculateDayDifference: Int = 0
    
    var body: some View {
        
        ZStack{
            
            Text("Expected childbirth in...")
                .font(.headline)
                .foregroundColor(Color.accentColor)
                .frame(width: 200, height: 20)
                .padding(.trailing, 180)
                .padding(.bottom, 300)
            
            NavigationStack{
                VStack(spacing: 60){
                    
                    Button(action: {
                        
                        self.showtestCounter = true
                    }) {
                        Text("The selected date is in \(calculateDayDifference) days")
                        
                    }.font(.title2)  .bold()
                        .foregroundColor(.black)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.accentColor).opacity(0.5)
                            .frame(width: 370, height: 100)
                            .shadow(radius: 5, y:10))
                    
                        .sheet(isPresented: self.$showtestCounter) {
                            CounterView()
                            
                        }
                    
                    HStack (spacing:30){
                        
                        
                        
                        Button(action: {
                            
                            self.showtipsView = true
                        }) {
                            Text("How do you feel today?")
                        }.font(.title2) .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.mint).opacity(0.3)
                                .frame(width: 170, height: 160)
                                .shadow(radius: 5, y:10))
                        
                            .sheet(isPresented: self.$showtipsView) {
                                tipsView()
                                
                            }
                        
                        
                        Button(action: {
                            
                            self.showtipsView = true
                        }) {
                            Text("Discover our tips for you")
                            
                        }.font(.title2) .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.mint).opacity(0.3)
                                .frame(width: 170, height: 160)
                                .shadow(radius: 5, y:10))
                        
                        
                            .sheet(isPresented: self.$showtipsView) {
                                tipsView()
                                
                            }
                    }.padding()
                    
                }
                
            }
        }
    }
}


struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}

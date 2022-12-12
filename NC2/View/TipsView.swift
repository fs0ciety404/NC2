//
//  feelingsView.swift
//  NC2
//
//  Created by Ludovica Marte on 10/12/22.
//

import SwiftUI
import CoreData

struct tipsView: View {
    var body: some View{
        NavigationView {
            ZStack{
                Color(UIColor.systemGray5) .opacity(0.5)
                    .ignoresSafeArea(.all)
                
                Text("")
                    .navigationTitle("Get better! 🥳")
                
                VStack{
                    
                    List {
                        
                        Section(header: Text("Headache")) {
                            Text("hfjdhfjd\nSPIEGAZIONE DELLA VITA")
                            Text("djfdf\n AHAHAHAHAHAHAHAHAHAHAHHHAHAHAHHAHAHAHAHHAHA")
                            Text("dfdsjfk")
                           
                        }
                        
                        Section(header: Text("Back pain")) {
                            Text("hfjdhfjd\nSPIEGAZIONE DELLA VITA")
                            Text("djfdf\n AHAHAHAHAHAHAHAHAHAHAHHHAHAHAHHAHAHAHAHHAHA")
                            Text("dfdsjfk")
                        }
                        Section(header: Text("Fatigue")) {
                            Text("hfjdhfjd\nSPIEGAZIONE DELLA VITA")
                            Text("djfdf\n AHAHAHAHAHAHAHAHAHAHAHHHAHAHAHHAHAHAHAHHAHA")
                            Text("dfdsjfk")
                            
                        }
                        Section(header: Text("Hunger")) {
                            Text("hfjdhfjd\nSPIEGAZIONE DELLA VITA")
                            Text("djfdf\n AHAHAHAHAHAHAHAHAHAHAHHHAHAHAHHAHAHAHAHHAHA")
                            Text("dfdsjfk")
                        }
                    }
                    
                }
            }
        }
    }
}
struct feelingsView_Previews: PreviewProvider {
    static var previews: some View {
        tipsView()
    }
}

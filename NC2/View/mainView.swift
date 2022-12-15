//
//  mainView.swift
//  NC2
//
//  Created by Ludovica Marte on 14/12/22.
//

import SwiftUI


struct mainView: View {
    
    @State private var date = Date()
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                VStack{
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {()
                        }) {
                            Image(systemName: "info.circle")
                                .imageScale(.large)
                        }
                        .padding()
                    }
                    Spacer()
                }
                VStack{
                    buttonsView()
                }
                GradientModel()
            }
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

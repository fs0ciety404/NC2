//
//  ContentView.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    @State private var date = Date()
    @State var  timeFinished : Bool = false
    var body: some View {
        
        // Create a ZStack, which is a container for views that arranges its children on top of each other
        
        ZStack {
            
            VStack{
                
                // Create a SpriteKit scene to hold the sprite
                
                if(!timeFinished){
                    
                    // Create a SpriteView that displays the MyScene scene
                    
                    SpriteView(scene: MyScene())
                    
                    // Set the maximum width and height of the view to infinity
                    
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    // Scale the view to fit within the maximum dimensions
                    
                        .scaledToFit()
                    
                    // Define a task that waits for a delay before setting timeFinished to true
                    
                        .task {
                            
                            // Wait for a delay
                            
                            await delay()
                            
                        }
                    
                }else{
                    
                    // If timeFinished is true, display the buttonsView
                    
                    NavigationStack{
                        ButtonsView()
                            .background {
                                Background()
                            }
                    }
                }
                
            }
            
        }
        
    }
    // A private function that waits for a delay
    
    private func delay() async {
        
        // Delay of 2,85 seconds (1 second = 1_000_000_000 nanoseconds)
        
        try? await Task.sleep(nanoseconds: 1_850_000_000)
        
        // Set timeFinished to true
        
        timeFinished = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//MARK: background
struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.mint, .accentColor]), startPoint: .top, endPoint: .bottom).opacity(0.15)
            .ignoresSafeArea(.all)
    }
}

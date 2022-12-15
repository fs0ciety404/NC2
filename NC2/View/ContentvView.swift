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
        
        try? await Task.sleep(nanoseconds: 2_850_000_000)
        
        // Set timeFinished to true
        
        timeFinished = true
    }
}

class MyScene: SKScene {

    override func didMove(to view: SKView) {

        // Set the background color to white

        backgroundColor = UIColor.white

        

        // Set the size of the scene to be 300 x 300

        size = CGSize(width: 300, height: 300)

        

        // Create a sprite node with the image "Stork_0"

        let sprite = SKSpriteNode(imageNamed: "Stork_0")

        

        // Set the position of the sprite to be at 10% of the width and 50% of the height of the scene

        sprite.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)

        

        // Set the zPosition of the sprite to be above everything else

        sprite.zPosition = 2

        

        addChild(sprite)


        // Create an action to move the sprite to the right edge of the scene, plus 100 pixels, over a duration of 1.3 seconds

        let moveAction = SKAction.moveTo(x: view.frame.width + 100, duration: 1.3)


        // Create an array to hold the textures for the sprite's animation

        var textures : [SKTexture] = []

        

        // Load each texture and add it to the array

        for i in 0...6{

            let texture = SKTexture(imageNamed: "Stork_\(i)")

            textures.append(texture)

        }

       

        // create animation with the provided textures

        let animation = SKAction.animate(with: textures, timePerFrame: 0.1)

      

        sprite.run(SKAction.repeatForever(animation))

      

        // run the provided move action on the sprite

        sprite.run(moveAction){

        

            // set the sprite's position

                    sprite.position = CGPoint(x: self.size.width * 0.1, y: self.size.height * 0.5)

        

            // run the provided move action again

                    sprite.run(moveAction){

           

                        // remove the sprite from its parent

                        self.removeFromParent()

                    }

                }

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

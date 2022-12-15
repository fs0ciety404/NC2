import SpriteKit
import SwiftUI

struct ContentView: View {
    
    @State var  timeFinished : Bool = false
    
    var body: some View {
        
        ZStack {
            
            VStack{
                
                if(!timeFinished){
                    SpriteView(scene: MyScene())
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .scaledToFit()
                    
                    Text("TRABY")
                        .task {
                            await delay()
                        }
                }else{
                    
                    mainView()
                }
            }
        }
    }
    private func delay() async {
        try? await Task.sleep(nanoseconds: 1_850_000_000)
        timeFinished = true
    }
}


class MyScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        backgroundColor = UIColor.white
        
        size = CGSize(width: 300, height: 300)
        
        let sprite = SKSpriteNode(imageNamed: "Stork_0")
        
        sprite.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        
        sprite.zPosition = 2
        
        addChild(sprite)
        
        let moveAction = SKAction.moveTo(x: view.frame.width + 100, duration: 1.3)
        
        var textures : [SKTexture] = []
        
        for i in 0...6{
            let texture = SKTexture(imageNamed: "Stork_\(i)")
            textures.append(texture)
        }
        
        let animation = SKAction.animate(with: textures, timePerFrame: 0.1)
        
        sprite.run(SKAction.repeatForever(animation))
        
        sprite.run(moveAction){
            sprite.position = CGPoint(x: self.size.width * 0.1, y: self.size.height * 0.5)
            sprite.run(moveAction){
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

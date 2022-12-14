//
//  ContentView.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI
import SpriteKit

struct SkView: UIViewRepresentable {
    func makeUIView(context: Context) -> SKView {
        let skView = SKView()

        // load up the animation frames
        let textureAtlas = SKTextureAtlas(named: "Sprites")
        var animationFrames: [SKTexture] = []
        let frames = [SKTexture(imageNamed: "Stork_0"),
                      SKTexture(imageNamed: "Stork_1"),
                      SKTexture(imageNamed: "Stork_2"),
                      SKTexture(imageNamed: "Stork_3"),
                      SKTexture(imageNamed: "Stork_4"),
                      SKTexture(imageNamed: "Stork_5"),
                      SKTexture(imageNamed: "Stork_6")]

        animationFrames.append(contentsOf: frames)

        for frame in animationFrames {
            print(frame)
        }
        // create the sprite node and add it to the sprite kit view
        let spriteNode = SKSpriteNode(texture: frames[0])
        skView.presentScene(SKScene(size: spriteNode.size))
        skView.scene?.addChild(spriteNode)

        // create the animation and start it
        let animation = SKAction.animate(with: animationFrames, timePerFrame: 0.1)
        spriteNode.run(SKAction.repeatForever(animation))

        return skView
    }

    func updateUIView(_ uiView: SKView, context: Context) {
        // update the SKView if necessary
    }
}
struct SkView_Previews: PreviewProvider {
    static var previews: some View {
        SkView()
    }
}



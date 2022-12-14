import SwiftUI
import SpriteKit

struct SkView: UIViewRepresentable {
    func makeUIView(context: Context) -> SKView {
        let skView = SKView()
        
        // load up the animation frames
        let textureAtlas = SKTextureAtlas(named: "Sprites")
        let animationFrames = textureAtlas.textureNames.map {
            SKTexture(imageNamed: $0)
        }

        // create the sprite node and add it to the sprite kit view
        let spriteNode = SKSpriteNode(texture: animationFrames[0])
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

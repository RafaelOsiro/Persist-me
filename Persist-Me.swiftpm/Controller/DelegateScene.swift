import Foundation
import SpriteKit

public class DelegateScene {
    
    private var gameScene: MainSceneView? = nil
    
    /// Function ton invoke the MainSceneView to 
    /// - Parameter scene: SKScene
    func putScene(scene: MainSceneView) {
        self.gameScene = scene
    }
    
    /// Function used to plus one to index number and change the label of the scene
    func addIndex() {
        
        self.gameScene?.index += 1  //Add one to index
        let node = self.gameScene?.childNode(withName: "NumberView") as? NumberView //Pass a childNode with name "NumberView" to node constant
        
        if self.gameScene!.index <= 100 {
            node?.label.text = "\(String(self.gameScene!.index))"
        }
    }
    
    /// Function used to change the message inside TopAlertView and show the message
    func changeMessage() {
        let messagesClass = Messages()
        guard let alertView = self.gameScene?.childNode(withName: "AlertView") else { return }
        let topAlertView = alertView.childNode(withName: "TopAlertView") as! TopAlertView
        let buttonAlertView = alertView.childNode(withName: "ButtonAlertView") as! ButtonAlertView

                
        if let message = messagesClass.messages.first(where: {$0.id == self.gameScene!.index}) {
            
            /// Adjust label when string is more than 70 characteres
            if(message.text.count >= 70) {
                topAlertView.adjustLabel(labelNode: topAlertView.label, rect: topAlertView.centerRect)
                topAlertView.label.position = CGPoint(x: 0, y: 15)
                topAlertView.label.text = "\(String(message.text))"
                buttonAlertView.label.text = "\(String(message.buttonText))"
                
            } else {
                topAlertView.label.text = "\(String(message.text))"
                buttonAlertView.label.text = "\(String(message.buttonText))"
            }
        } else { }
    }
    
        
    /// Function to add some asset in scene and use animation in scene
    func addAssets() {
            self.gameScene!.addChild(self.animation())
    }
    
    /// Will present finish scene and transition with animation and duration.
    func presentScene() {
        self.gameScene?.view?.presentScene(FinishSceneView(size: self.gameScene!.size).scene!, transition: .fade(withDuration: 3))
    }
    
    /// Function to set an AssetView according to index. This will set an imageNamed, color, size and position.
    /// - Returns: SKNode
    func animation()->SKNode {
        
        var assetView: AssetsView?
        
        ///Will set differente image name to assetView: AssetView, color, size and position
        switch self.gameScene!.index {
        case 30:
            assetView = AssetsView(texture: SKTexture(imageNamed: "Programacao"), color: .clear, size: CGSize(width: 121, height: 76.42), position: CGPoint(x: 170, y: 500))
            assetView!.run(.sequence([
                .wait(forDuration: 2),
                .group([
                    SKAction.move(to: CGPoint(x: 170, y: 500), duration: 2),
                    SKAction.scale(to: CGSize(width: 121, height: 76.42), duration: 2)
                ])
            ]))
        case 37:
            assetView = AssetsView(texture: SKTexture(imageNamed: "Application"), color: .clear, size: CGSize(width: 71, height: 86.63), position: CGPoint(x: 310, y: 500))
            assetView!.run(.sequence([
                .wait(forDuration: 2),
                .group([
                    SKAction.move(to: CGPoint(x: 310, y: 500), duration: 2),
                    SKAction.scale(to: CGSize(width: 71, height: 86.63), duration: 2)
                ])
            ]))
        case 41:
            assetView = AssetsView(texture: SKTexture(imageNamed: "MissingDocuments"), color: .clear, size: CGSize(width: 71.99, height: 93.76), position: CGPoint(x: 430, y: 500))
            assetView!.run(.sequence([
                .wait(forDuration: 2),
                .group([
                    SKAction.move(to: CGPoint(x: 430, y: 500), duration: 2),
                    SKAction.scale(to: CGSize(width: 71.99, height: 93.76), duration: 2)
                ])
            ]))
        case 47:
            assetView = AssetsView(texture: SKTexture(imageNamed: "Confirm"), color: .clear, size: CGSize(width: 60, height: 81.97), position: CGPoint(x: 170, y: 300))
            assetView!.run(.sequence([
                .wait(forDuration: 2),
                .group([
                    SKAction.move(to: CGPoint(x: 170, y: 300), duration: 2),
                    SKAction.scale(to: CGSize(width: 60, height: 81.97), duration: 2)
                ])
            ]))
        case 70:
            assetView = AssetsView(texture: SKTexture(imageNamed: "UCB"), color: .clear, size: CGSize(width: 100, height: 100), position: CGPoint(x: 310, y: 300))
            assetView!.run(.sequence([
                .wait(forDuration: 2),
                .group([
                    SKAction.move(to: CGPoint(x: 310, y: 300), duration: 2),
                    SKAction.scale(to: CGSize(width: 100, height: 100), duration: 2)
                ])
            ]))
        case 77:
            assetView = AssetsView(texture: SKTexture(imageNamed: "Assessment"), color: .clear, size: CGSize(width: 61, height: 75), position: CGPoint(x: 430, y: 300))
            assetView!.run(.sequence([
                .wait(forDuration: 2),
                .group([
                    SKAction.move(to: CGPoint(x: 430, y: 300), duration: 2),
                    SKAction.scale(to: CGSize(width: 61, height: 75), duration: 2)
                ])
            ]))
        default:
            assetView = nil
            break
        }
        
        /// Will scale by coding than using Spritekit scale by default.
        if assetView != nil {
            var scale: CGFloat
            
            if assetView!.size.width > assetView!.size.height {
                scale = UIScreen.main.bounds.size.width / assetView!.size.width
            } else {
                scale = UIScreen.main.bounds.size.height / assetView!.size.height
            }
            
            scale *= 0.2
            
            assetView!.size.width *= scale
            assetView!.size.height *= scale
            
            assetView!.position = CGPoint(x: 300, y: 300)
            
            return assetView!
        }
        return SKNode()
    }
}

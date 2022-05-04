import Foundation
import SpriteKit

extension ButtonView {
    
    /// Verify if the user press the button
    /// - Parameter event: Receave user's mouse click, add number of clicks and change the color's label
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let gameScene = self.parent as? MainSceneView else { return }
        
        if(!gameScene.isDisabled) {
            self.label.fontColor = UIColor(named: "labelPressed")

            gameScene.delegateScene?.addIndex()
            gameScene.delegateScene?.changeMessage()
            gameScene.delegateScene?.addAssets()
            
            if gameScene.index == 81 {
                gameScene.delegateScene?.presentScene()
            }
        }
    }
    
    /// Verify if the mouse button click was up
    /// - Parameter event: Back the color to normal and hide the welcome message
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.label.fontColor = UIColor(named: "labelDefault")

        guard let gameScene = self.parent as? MainSceneView else { return }
        let node = gameScene.childNode(withName: "Welcome message") as? MessageView
        node?.label.isHidden = true
    }
}

import Foundation
import SpriteKit

extension ButtonAlertView {
    
    
    /// Verify if the user press the button
    /// - Parameter event: Receave user's mouse click and change the color's label
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.label.fontColor = UIColor(named: "labelPressed")
    }
    
    /// Verify if the mouse button click was up
    /// - Parameter event: Back the color to normal and hide the welcome message
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let gameScene = self.scene as? MainSceneView else { return }
        gameScene.isDisabled = false
        self.label.fontColor = UIColor(named: "labelDefault")
        self.parent?.removeFromParent()
    }
}

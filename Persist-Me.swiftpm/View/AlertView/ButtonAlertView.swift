import Foundation
import SpriteKit

public class ButtonAlertView: SKSpriteNode {
    
    let label: SKLabelNode = SKLabelNode()
    let delegateScene = DelegateScene()

    
    public init(texture: SKTexture?, color: UIColor, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: color, size: size)
        
        self.name = "ButtonAlertView"
        
        ///Button label settings
        self.label.fontName = FontModel.sfProDisplayRegular
        self.label.verticalAlignmentMode = .center
        self.label.text = "Button"
        self.label.fontSize = 15
        self.label.zPosition = 2
        self.label.fontColor = UIColor.init(named: "labelDefault")
        ///Position and interation
        self.isUserInteractionEnabled = true
        self.zPosition = 2
        self.position = position
        
        ///Add child
        addChild(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

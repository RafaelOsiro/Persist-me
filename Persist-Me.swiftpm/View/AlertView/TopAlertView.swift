import Foundation
import SwiftUI
import SpriteKit

public class TopAlertView: SKSpriteNode {
    
    let label: SKLabelNode = SKLabelNode()
    
    public init(texture: SKTexture?, color: UIColor, size: CGSize, position: CGPoint) {
        
        super.init(texture: texture, color: color, size: size)
        
        self.name = "TopAlertView"
        
        ///Button label settings
        self.label.verticalAlignmentMode = .center
        self.label.fontName = FontModel.sfProDisplayRegular
        self.label.text = ""
        self.label.preferredMaxLayoutWidth = size.width * 0.9
        self.label.numberOfLines = 10
        self.label.lineBreakMode = .byCharWrapping
        self.label.fontSize = 15
        self.label.zPosition = 3
        self.label.fontColor = UIColor(named: "alertLabel")
        self.label.position = CGPoint(x: 0, y: 15)
        
        ///Position and interation
        self.zPosition = 2
        self.position = position
        
        ///Corner Radius
        let cornerRadius = SKShapeNode(rectOf: self.size, cornerRadius: 14)
        cornerRadius.fillColor = UIColor(named: "alertBackground")!
        cornerRadius.strokeColor = .clear
        
        ///Add child
        addChild(label)
        addChild(cornerRadius)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

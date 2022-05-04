import Foundation
import SpriteKit

public class AlertView: SKSpriteNode {
    
    public init(texture: SKTexture?, color: UIColor, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: color, size: size)
        
        self.name = "AlertView"
        
        addChild(TopAlertView.init(texture: nil, color: .clear, size: CGSize(width: 270, height: 118), position: CGPoint(x: 300, y: 321)))
        addChild(StrikeAlertView.init(texture: nil, color: .clear, size: CGSize(width: 270, height: 2), position: CGPoint(x: 300, y: 300)))
        addChild(ButtonAlertView.init(texture: nil, color: .clear, size: CGSize(width: 270, height: 43), position: CGPoint(x: 300, y: 281)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

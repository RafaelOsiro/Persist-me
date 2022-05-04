import Foundation
import SpriteKit

public class StrikeAlertView: SKSpriteNode {
    
    public init(texture: SKTexture?, color: UIColor, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: color, size: size)
        
        self.name = "StrikeAlertView"
        
        ///Position and color
        self.zPosition = 2
        self.position = position
        self.color = UIColor(named: "strikeBackground")!
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

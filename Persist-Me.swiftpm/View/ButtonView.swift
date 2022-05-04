import Foundation
import SpriteKit

public class ButtonView: SKSpriteNode {
    
    let label: SKLabelNode = SKLabelNode()
        
    public init(texture: SKTexture?, color: UIColor, size: CGSize, position: CGPoint) {
        
        super.init(texture: texture, color: color, size: size)
        
        self.name = "ButtonView"    //Label node name
        
        ///Button label settings
        self.label.fontName = FontModel.sfProDisplayRegular //Label node fontName to use
        self.label.verticalAlignmentMode = .center  //Label node horizontal allignmente
        self.label.text = "Persist-me"  //Label node text
        self.label.fontSize = 15    //Label node fontsize
        self.label.zPosition = 2    //Label node z position (use with hierarchy)
        self.label.fontColor = UIColor(named: "labelDefault")   //Label node font color
        self.isUserInteractionEnabled = true    //Label node enable user interaction
        self.zPosition = 1  //Label node z position (use with hierarchy)
        self.position = position
        
        ///Corner Radius settings
        let cornerRadius = SKShapeNode(rectOf: self.size, cornerRadius: 10)
        cornerRadius.fillColor = UIColor(named: "shapeBackground")!
        cornerRadius.strokeColor = .clear
        
        addChild(label) //Add label node to scene
        addChild(cornerRadius)  //Add label cornerRadius to scene
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

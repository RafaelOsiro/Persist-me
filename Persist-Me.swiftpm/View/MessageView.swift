import Foundation
import SpriteKit

public class MessageView: SKLabelNode {
    
    let label: SKLabelNode = SKLabelNode()

    public override init() {
        super .init()
        
        ///MessageView label settings
        self.label.position = CGPoint(x: 300, y: 463)   //Label node position in scene
        self.label.fontName = FontModel.sfProDisplayRegular //Label node fontName to use
        self.label.horizontalAlignmentMode = .center    //Label node horizontal allignmente
        self.label.fontSize = 17    //Label node fontsize
        self.label.zPosition = 3    //Label node z position (use with hierarchy)
        self.label.fontColor = UIColor(named: "label")! //Label node font color
        
        addChild(label) //Add label node to scene
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

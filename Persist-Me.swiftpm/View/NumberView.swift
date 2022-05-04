import Foundation
import SpriteKit

public class NumberView: SKLabelNode {
    
    var label: SKLabelNode = SKLabelNode()

    public override init() {
        super .init()
        
        self.name = "NumberView"    //Label node name
        
        ///NumberView label settings
        self.label.position = CGPoint(x: 300, y: 90)    //Label node position in scene
        self.label.fontName = FontModel.sfProDisplayRegular //Label node fontName to use
        self.label.horizontalAlignmentMode = .center    //Label node horizontal allignmente
        self.label.text = "0"   //Label node text
        self.label.fontSize = 17    //Label node fontsize
        self.label.zPosition = 4    //Label node z position (use with hierarchy)
        self.label.fontColor = UIColor(named: "label")! //Label node font color
        
        addChild(label) //Add label node to scene
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

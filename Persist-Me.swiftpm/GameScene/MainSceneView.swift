import SpriteKit
import Foundation

public class MainSceneView: SKScene {
    
    let messagesClass = Messages()
    
    var delegateScene: DelegateScene?
    var isDisabled = false
    
    var index: Int = 0 {
        didSet {
            if (self.messagesClass.messages.first(where: {$0.id == index}) != nil) {
                        addChild(AlertView(texture: nil, color: .clear, size: CGSize(width: 270, height: 118), position: CGPoint(x: 300, y: 422)))
                isDisabled = true
            }
        }
    }
    
    public override func sceneDidLoad() {
        super.sceneDidLoad()
        
        self.delegateScene = DelegateScene()
        self.delegateScene!.putScene(scene: self)
        self.zPosition = 0
        
        ///Color of the main scene
        self.backgroundColor = UIColor(named: "Background")!
        
        
        if index == 0 {
            let messageView = MessageView()
            messageView.name = "Welcome message"
            messageView.label.text = "Press the button and see what happen"
            addChild(messageView)
        }
        
        addChild(NumberView())
        addChild(ButtonView(texture: nil, color: .clear, size: CGSize(width: 100, height: 30), position: CGPoint(x: 300, y: 50)))
    }
}

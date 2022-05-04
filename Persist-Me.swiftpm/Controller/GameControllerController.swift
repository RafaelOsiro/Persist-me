import Foundation
import SwiftUI
import SpriteKit

public class GameController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view = SKView()
        
        guard let myView = view as? SKView else {return}
        
        print(myView.ignoresSiblingOrder)
        
        myView.ignoresSiblingOrder = false
        myView.isMultipleTouchEnabled = false
        myView.showsFPS = false
        myView.showsNodeCount = false
        myView.showsPhysics = false
        
        let scene = MainSceneView(size: CGSize(width: 600, height: 600))
        
        scene.scaleMode = .aspectFill
        
        myView.presentScene(scene)
    }
}

struct ControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = GameController
    
    func makeUIViewController(context: Context) -> GameController {
        return GameController()
    }
    
    func updateUIViewController(_ uiViewController: GameController, context: Context) {}
}

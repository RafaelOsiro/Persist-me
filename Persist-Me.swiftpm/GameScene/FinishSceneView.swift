//
//  File.swift
//  
//
//  Created by Rafael Riki Ogawa Osiro on 08/04/22.
//

import Foundation
import SpriteKit


public class FinishSceneView: SKScene {
    
    public override func sceneDidLoad() {
        super.sceneDidLoad()
        
        self.backgroundColor = UIColor(named: "Background")!
        scene?.scaleMode = .aspectFill
        
        let message1 = FinishMessageView()
        
        message1.name = "FinishLabel1"
        message1.label.fontName = FontModel.sfProDisplayMedium
        message1.label.text = "  Congratulations 🎉!!!\n\n\t\tYou did it!\n\nYou you continued as I did"
        message1.label.horizontalAlignmentMode = .center
        message1.label.verticalAlignmentMode = .center
        message1.label.numberOfLines = 3
        message1.label.position = CGPoint(x: 300, y: 300)
        message1.label.fontSize = 20

        addChild(message1)
        message1.run(message1.animation()) {
            
            let message2 = FinishMessageView()
            message2.name = "FinishLabel2"
            message2.label.fontName = FontModel.sfProDisplayMedium
            message2.label.horizontalAlignmentMode = .center
            message2.label.verticalAlignmentMode = .center
            message2.label.numberOfLines = 8
            message2.label.text = "Whenever you can, grab the opportunity!\n\n\t\tPersevere and never give up!!"
            message2.label.position = CGPoint(x: 300, y: 300)
            message2.label.fontSize = 20

            self.addChild(message2)
            message2.run(message2.animation()) {
                
                let message3 = FinishMessageView()
                message3.name = "FinishLabel3"
                message3.label.fontName = FontModel.sfProDisplayMedium
                message3.label.text = "Thank you for rating my playgrounds!"
                message3.label.horizontalAlignmentMode = .center
                message3.label.verticalAlignmentMode = .center
                message3.label.numberOfLines = 8
                message3.label.position = CGPoint(x: 300, y: 300)
                message3.label.fontSize = 20
                self.addChild(message3)
            }
        }
    }
}

extension SKShapeNode {
  
  static func makeLine(_ texture: CGSize) -> SKShapeNode {
    let shape = SKShapeNode(rectOf: texture)
    shape.zPosition = .greatestFiniteMagnitude
    shape.lineWidth = 1
    shape.strokeColor  = .red
    return shape
  }
}

//
//  File.swift
//  
//
//  Created by Rafael Riki Ogawa Osiro on 07/04/22.
//

import Foundation
import SpriteKit

class AssetsView: SKSpriteNode {
    
    public init(texture: SKTexture?, color: UIColor, size: CGSize, position: CGPoint) {
        super.init(texture: texture, color: color, size: size)
        self.name = "AssetsView"
        self.position = position
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

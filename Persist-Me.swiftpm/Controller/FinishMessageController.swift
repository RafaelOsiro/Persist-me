//
//  File.swift
//  
//
//  Created by Rafael Riki Ogawa Osiro on 08/04/22.
//

import SpriteKit

extension FinishMessageView {
    
    /// Function will set an animation with a sequence: fade in, wait, fade out and remove the sequence
    /// - Returns: SKAction
    func animation() -> SKAction {
        let action = SKAction.sequence([
            .fadeIn(withDuration: 1.8),
            .wait(forDuration: 1.8),
            .fadeOut(withDuration: 1.8),
            .run {
                self.removeFromParent()
            }
        ])
        return action
    }
}

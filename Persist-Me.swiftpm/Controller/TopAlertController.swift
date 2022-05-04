//
//  File.swift
//  
//
//  Created by Rafael Riki Ogawa Osiro on 06/04/22.
//

import Foundation
import SwiftUI
import SpriteKit

extension TopAlertView {
    
    /// Adjust label based in widh and height, frame width and height
    /// - Parameters:
    ///   - labelNode: SKLabelNode
    ///   - rect: CGRect
    func adjustLabel(labelNode: SKLabelNode, rect: CGRect) {

        // Determine the font scaling factor that should let the label text fit in the given rectangle.
        let scalingFactor = min(rect.width / labelNode.frame.width, rect.height / labelNode.frame.height)

        // Change the fontSize.
        labelNode.fontSize *= (scalingFactor / 0.7)

        // Optionally move the SKLabelNode to the center of the rectangle.
        labelNode.position = CGPoint(x: rect.midX, y: rect.midY - labelNode.frame.height / 1)
    }
}

//
//  Scene.swift
//  ARTest
//
//  Created by Gregory Maldonado on 3/17/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SpriteKit
import ARKit

class Scene: SKScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let sceneView = self.view as? ARSKView else {
            return
        }
        
        if let touchLocation = touches.first?.location(in: sceneView) {
            if let hit = sceneView.hitTest(touchLocation, types: .featurePoint).first {
                sceneView.session.add(anchor: ARAnchor(transform: hit.worldTransform))
            }
        }
        
    }
    
}

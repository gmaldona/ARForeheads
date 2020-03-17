//
//  ViewController.swift
//  ARTest
//
//  Created by Gregory Maldonado on 3/17/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import UIKit
import SpriteKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet var sceneView: ARSKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sceneView.delegate = self
        
        if let scene = SKScene(fileNamed: "Scene") {
            sceneView.presentScene(scene)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARWorldTrackingConfiguration()
        
        sceneView.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        sceneView.session.pause()
    }
    

}


extension ViewController : ARSKViewDelegate {
    /*
    func view(_ view: ARSKView, nodeFor anchor: ARAnchor) -> SKNode? {
        
    }
 */
    
    func view(_ view: ARSKView, didAdd node: SKNode, for anchor: ARAnchor) {
        
        let image: SKSpriteNode = SKSpriteNode(imageNamed: "Greg")

        image.xScale = 0.25
        image.yScale = 0.25
        
        node.addChild(image)
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        
    }
    
    
}

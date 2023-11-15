//
//  ResultsScene.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 14.11.2023.
//

import SpriteKit

final class ResultsScene: SKScene {
    
    let image = UIImage(named: "SingaporeCircuit-light")
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        for i in 0...3 {
            var backgroundImage = SKSpriteNode(imageNamed: "SingaporeCircuit-light")
            if self.view?.traitCollection.userInterfaceStyle == .dark {
                backgroundImage = SKSpriteNode(imageNamed: "SingaporeCircuit-dark")
            }
            if i == 1 || i == 3 {
                backgroundImage = SKSpriteNode(imageNamed: "F1car")
            }
            backgroundImage.name = "back"
            backgroundImage.size.height = size.height
            backgroundImage.size.width = size.height * 1.5
            backgroundImage.anchorPoint = CGPoint(x: 0, y: 0)
            backgroundImage.position = CGPoint(x: CGFloat(i)*backgroundImage.size.width, y:0)
            self.addChild(backgroundImage)
        }
    }

    override func update(_ currentTime: TimeInterval) {
        self.enumerateChildNodes(withName: "back", using: ({
            (node, error) in
            node.position.x -= 0.3
            if node.position.x < -(node.frame.width) {
                node.position.x += 4 * node.frame.width
            }
        }))
    }
}

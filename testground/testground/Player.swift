//
//  Player.swift
//  testground
//
//  Created by 张勇昊 on 4/9/17.
//  Copyright © 2017 YonghaoZhang. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode{
    
    
    // MARK: - Init
    init() {
        
        let playerSize = CGSize(width: 30, height: 60)
        
        super.init(texture: nil, color: UIColor.cyan, size: playerSize)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    func setup() {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody!.allowsRotation = false
        physicsBody!.categoryBitMask = PhysicsCategory.Player
        physicsBody!.collisionBitMask = PhysicsCategory.Ground
        physicsBody!.contactTestBitMask = PhysicsCategory.Coin | PhysicsCategory.Deadly
    }
}

//
//  PhysicsCategory.swift
//  testground
//
//  Created by 张勇昊 on 4/9/17.
//  Copyright © 2017 YonghaoZhang. All rights reserved.
//

import Foundation

struct PhysicsCategory {
    static let None: UInt32     = 0         // 0000000
    static let Player: UInt32   = 0b1       // 0000001   001
    static let Ground: UInt32   = 0b10      // 0000010   or
    static let Coin: UInt32     = 0b100     // 0000100   100
    static let Deadly: UInt32   = 0b1000    // 0001000   101
}

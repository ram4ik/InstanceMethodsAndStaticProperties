//
//  Score.swift
//  InstanceMethodsAndStaticProperties
//
//  Created by ramil on 17.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class Score {
    
    var current: Int = 0
    
    func increment(_ score: Int, value: Int = 1) -> Int {
        score + value
    }
    
    func incrementIt(_ value: Int = 1) {
        current += value
    }
}

struct ScoreStruct {
    
    private(set) var current: Int = 0
    
    mutating func increment(_ value: Int = 1) {
        current += value
    }
}

struct ScoreStatic {
    
    private(set) var current: Int = 0
    static var highestScore: Int = 0
    
    mutating func increment(_ value: Int = 1) {
        current += value
        
        if current > ScoreStatic.highestScore {
            ScoreStatic.highestScore = current
        }
    }
}



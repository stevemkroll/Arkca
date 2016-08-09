//
//  Narcotics.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import Foundation

class Narcotics {
    
    var torpor = Double()
    var time = Double()
    var rate = Double()
    
    init(torpor:Double, time:Double, rate:Double) {
        self.torpor = torpor
        self.time = time
        self.rate = rate
    }
}

let narcotics = Narcotics.init(torpor: 40.0, time: 8.0, rate: 5.0)
let narcoBerries = Narcotics.init(torpor: 7.5, time: 3.0, rate: 2.5)

let torporExponent = 0.800403041
let torporCoefficient = 22.39671632


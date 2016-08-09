//
//  Food.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import Foundation

class Food {
    
    var name = String()
    var food = Double()
    var affinity = Double()
    
    init(name:String, food:Double, affinity:Double){
        self.name = name
        self.food = food
        self.affinity = affinity
    }
}

let blankFood = Food.init(name: " ", food: 1, affinity: 1)

let mejoBerry = Food.init(name: "mejoberry", food: 30, affinity: 30)
let otherBerry = Food.init(name: "other berry", food: 20, affinity: 20)
let crops = Food.init(name: "crops", food: 40, affinity: 40)

let rawMeat = Food.init(name: "raw meat", food: 50, affinity: 50)
let cookedMeat = Food.init(name: "cooked meat", food: 50, affinity: 25)
let rawPrime = Food.init(name: "raw prime", food: 50, affinity: 150)
let cookedPrime = Food.init(name: "cooked prime", food: 50, affinity: 75)

let primeMeat_Compy = Food.init(name: "raw prime", food: 20, affinity: 600)
let rawMeat_Carrion = Food.init(name: "raw meat", food: 15, affinity: 15)

let spoiledMeat = Food.init(name: "spoiled meat", food: 50, affinity: 100)

let kibble = Food.init(name: "kibble", food: 79.98, affinity: 400)
let kibble_Bronto = Food.init(name: "kibble", food: 53.28, affinity: 400)
let kibble_Gigantopithecus = Food.init(name: "kibble", food: 79.98, affinity: 300)
let kibble_Mosasaurus = Food.init(name: "kibble", food: 79.98, affinity: 550)

let giga_Egg = Food.init(name: "giga egg", food: 300, affinity: 1200)
let quetz_Egg = Food.init(name: "quetz egg", food: 200, affinity: 550)
let rex_Egg = Food.init(name: "rex egg", food: 200, affinity: 100)
let spino_Egg = Food.init(name: "spino egg", food: 137.5, affinity: 80)
let bronto_Egg = Food.init(name: "bronto egg", food: 250, affinity: 60)
let carno_Egg = Food.init(name: "carno egg", food: 137.5, affinity: 30)
let dodo_Egg = Food.init(name: "dodo egg", food: 20, affinity: 9)

let humanFeces = Food.init(name: "human feces", food: 10, affinity: 60)
let largeFeces = Food.init(name: "large feces", food: 37.5, affinity: 225)
let mediumFeces = Food.init(name: "medium feces", food: 25, affinity: 150)
let smallFeces = Food.init(name: "small feces", food: 12.5, affinity: 75)

let rareMushroom = Food.init(name: "rare mushroom", food: 75, affinity: 90)
let anglerGel = Food.init(name: "angler gel", food: 8*3, affinity: 50)
let brothOfEnlightenment = Food.init(name: "broth of enlightenment", food: 80, affinity: 1500)
let rareFlower = Food.init(name: "rare flower", food: 15*2.333, affinity: 200)









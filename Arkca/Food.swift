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

let blankFood = Food(name: " ", food: 1, affinity: 1)

let mejoBerry = Food(name: "mejoberry", food: 30, affinity: 30)
let otherBerry = Food(name: "other berry", food: 20, affinity: 20)
let crops = Food(name: "crops", food: 40, affinity: 40)

let rawMeat = Food(name: "raw meat", food: 50, affinity: 50)
let cookedMeat = Food(name: "cooked meat", food: 50, affinity: 25)
let rawPrime = Food(name: "raw prime", food: 50, affinity: 150)
let cookedPrime = Food(name: "cooked prime", food: 50, affinity: 75)

let primeMeat_Compy = Food(name: "raw prime", food: 20, affinity: 600)
let rawMeat_Carrion = Food(name: "raw meat", food: 15, affinity: 15)

let spoiledMeat = Food(name: "spoiled meat", food: 50, affinity: 100)

let kibble = Food(name: "kibble", food: 79.98, affinity: 400)
let kibble_Bronto = Food(name: "kibble", food: 53.28, affinity: 400)
let kibble_Gigantopithecus = Food(name: "kibble", food: 79.98, affinity: 300)
let kibble_Mosasaurus = Food(name: "kibble", food: 79.98, affinity: 550)
let kibble_diplodocus = Food(name: "kibble", food: 53.28, affinity: 275)

let giga_Egg = Food(name: "giga egg", food: 300, affinity: 1200)
let quetz_Egg = Food(name: "quetz egg", food: 200, affinity: 550)
let rex_Egg = Food(name: "rex egg", food: 200, affinity: 100)
let spino_Egg = Food(name: "spino egg", food: 137.5, affinity: 80)
let bronto_Egg = Food(name: "bronto egg", food: 250, affinity: 60)
let carno_Egg = Food(name: "carno egg", food: 137.5, affinity: 30)
let dodo_Egg = Food(name: "dodo egg", food: 20, affinity: 9)

let humanFeces = Food(name: "human feces", food: 10, affinity: 60)
let largeFeces = Food(name: "large feces", food: 37.5, affinity: 225)
let mediumFeces = Food(name: "medium feces", food: 25, affinity: 150)
let smallFeces = Food(name: "small feces", food: 12.5, affinity: 75)

let rareMushroom = Food(name: "rare mushroom", food: 75, affinity: 90)
let anglerGel = Food(name: "angler gel", food: 8*3, affinity: 50)
let brothOfEnlightenment = Food(name: "broth of enlightenment", food: 80, affinity: 1500)
let rareFlower = Food(name: "rare flower", food: 15*2.333, affinity: 200)
let speciesX = Food(name: "species x", food: 50, affinity: 45)

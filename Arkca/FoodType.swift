//
//  FoodType.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import Foundation

class FoodType {
    
    var name = String()
    var foodList = [Food]()
    
    init(name:String, foodList:[Food]){
        self.name = name
        self.foodList = foodList
    }
}

let blankFoodType = FoodType(name: "blank food type", foodList: [blankFood])

let carnivore = FoodType(name: "carnivore", foodList: [kibble, rawPrime, cookedPrime, rawMeat, cookedMeat, blankFood, blankFood])
let herbivore = FoodType(name: "herbivore", foodList: [kibble, crops, mejoBerry, otherBerry, blankFood, blankFood, blankFood])
let carrion = FoodType(name: "carrion", foodList: [spoiledMeat, rawMeat_Carrion, blankFood, blankFood, blankFood, blankFood, blankFood])

let carnivore_noKibble = FoodType(name: "carnivore", foodList: [rawPrime, cookedPrime, rawMeat, cookedMeat, blankFood, blankFood, blankFood])
let carnivore_Compy = FoodType(name: "carnivore", foodList: [primeMeat_Compy, blankFood, blankFood, blankFood, blankFood, blankFood, blankFood])

let herbivore_Bronto = FoodType(name: "herbivore", foodList: [kibble_Bronto, crops, mejoBerry, otherBerry, blankFood, blankFood, blankFood])
let herbivore_diplodocus = FoodType(name: "herbivore", foodList: [kibble_diplodocus, crops, mejoBerry, otherBerry, blankFood, blankFood, blankFood])

let carrion_Arthropluera = FoodType(name: "carrion", foodList: [brothOfEnlightenment, spoiledMeat, rawMeat_Carrion, blankFood, blankFood, blankFood, blankFood])

let omnivore = FoodType(name: "onmivore", foodList: [kibble, rawPrime, cookedPrime, rawMeat, cookedMeat, mejoBerry, otherBerry])














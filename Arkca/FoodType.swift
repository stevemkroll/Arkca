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
let omnivore = FoodType(name: "onmivore", foodList: [kibble, rawPrime, cookedPrime, rawMeat, cookedMeat, mejoBerry, otherBerry])

let carnivore_noKibble = FoodType(name: "carnivore", foodList: [rawPrime, cookedPrime, rawMeat, cookedMeat, blankFood, blankFood, blankFood])
let herbivore_noKibble = FoodType(name: "herbivore", foodList: [crops, mejoBerry, otherBerry, blankFood, blankFood, blankFood, blankFood])

let foodType_arthropluera = FoodType(name: "carrion", foodList: [brothOfEnlightenment, spoiledMeat, rawMeat_Carrion, blankFood, blankFood, blankFood, blankFood])

let foodType_bronto = FoodType(name: "herbivore", foodList: [kibble_Bronto, crops, mejoBerry, otherBerry, blankFood, blankFood, blankFood])

let foodType_compy = FoodType(name: "carnivore", foodList: [primeMeat_Compy, blankFood, blankFood, blankFood, blankFood, blankFood, blankFood])

let foodType_diplodocus = FoodType(name: "herbivore", foodList: [kibble_diplodocus, crops, mejoBerry, otherBerry, blankFood, blankFood, blankFood])

let foodType_dungBeetle = FoodType(name: "coprophagic", foodList: [largeFeces, mediumFeces, smallFeces, blankFood, blankFood, blankFood, blankFood])

let foodType_lystrosaurus = FoodType(name: "herbivore", foodList: [rareFlower, mejoBerry, otherBerry, blankFood, blankFood, blankFood, blankFood])

let foodType_manta = FoodType(name: "other", foodList: [anglerGel, blankFood, blankFood, blankFood, blankFood, blankFood, blankFood, blankFood])

let foodType_mosa = FoodType(name: "carnivore", foodList: [kibble_Mosasaurus, rawPrime, cookedPrime, rawMeat, cookedMeat, blankFood, blankFood])

let foodType_oviraptor = FoodType(name: "ovivore", foodList: [giga_Egg, quetz_Egg, rex_Egg, spino_Egg, bronto_Egg, carno_Egg, dodo_Egg])

let foodType_procoptodon = FoodType(name: "other", foodList: [rareFlower, speciesX, blankFood, blankFood, blankFood, blankFood, blankFood])

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

let blankFoodType = FoodType.init(name: "blank food type", foodList: [blankFood])

let carnivore = FoodType.init(name: "carnivore", foodList: [kibble,rawPrime,cookedPrime,rawMeat,cookedMeat,blankFood,blankFood])
let herbivore = FoodType.init(name: "herbivore", foodList: [kibble,crops,mejoBerry,otherBerry,blankFood,blankFood,blankFood])
let carrion = FoodType.init(name: "carrion", foodList: [spoiledMeat,rawMeat_Carrion,blankFood,blankFood,blankFood,blankFood,blankFood])

let foodType_Arthropluera = FoodType.init(name: "carrion", foodList: [brothOfEnlightenment,spoiledMeat,rawMeat_Carrion,blankFood,blankFood,blankFood,blankFood])

let foodType_Bronto = FoodType.init(name: "herbivore", foodList: [kibble_Bronto,crops,mejoBerry,otherBerry,blankFood,blankFood,blankFood])










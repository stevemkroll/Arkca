//
//  Dinos.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import Foundation

class Dino {
    
    var name = String()
    var foodType = FoodType.init(name: String(), foodList: [Food]())
    var favoriteKibble = String()
    var tameable = String()
    var rideable = String()
    var saddle = String()
    var dossier = String()
    
    var baseAffinity = Double()
    var affinityPerLevel = Double()
    var foodConsumptionRate = Double()
    var consumptionRateMutiplier = Double()
    
    var baseTorpor = Double?()
    var torporPerlevel = Double?()
    var torporRecoveryRate = Double?()
    var recoveryRateMultiplier = Double?()
    
    var wakingFoodRateMultiplier = Double?()
    var wakingFoodAffinityMultiplier = Double?()
    
    var tamingMethod = String()
    
    var icon = String()
    
    init(
        name:String,
        foodType: FoodType,
        favoriteKibble: String,
        tameable: String,
        rideable: String,
        saddle: String,
        dossier: String,
        
        baseAffinity: Double,
        affinityPerLevel: Double,
        foodConsumptionRate: Double,
        consumptionRateMultiplier: Double,
        
        baseTorpor: Double?,
        torporPerLevel: Double?,
        torporRecoveryRate: Double?,
        recoveryRateMultiplier: Double?,
        
        wakingFoodRateMultiplier: Double?,
        wakingFoodAffinityMultiplier: Double?,
        
        tamingMethod: String,
        
        image: String
        )
    {
        self.name = name
        self.foodType = foodType
        self.favoriteKibble = favoriteKibble
        self.tameable = tameable
        self.rideable = rideable
        self.saddle = saddle
        self.dossier = dossier
        
        self.baseAffinity = baseAffinity
        self.affinityPerLevel = affinityPerLevel
        self.foodConsumptionRate = foodConsumptionRate
        self.consumptionRateMutiplier = consumptionRateMultiplier
        
        self.baseTorpor = baseTorpor
        self.torporPerlevel = torporPerLevel
        self.torporRecoveryRate = torporRecoveryRate
        self.recoveryRateMultiplier = recoveryRateMultiplier
        
        self.wakingFoodRateMultiplier = wakingFoodRateMultiplier
        self.wakingFoodAffinityMultiplier = wakingFoodAffinityMultiplier
        
        self.tamingMethod = tamingMethod
        
        self.icon = image
    }
}

let blank = Dino(name: " ", foodType: blankFoodType, favoriteKibble: " ", tameable: " ", rideable: " ", saddle: " ", dossier: " ", baseAffinity: 0, affinityPerLevel: 0, foodConsumptionRate: 0, consumptionRateMultiplier: 0, baseTorpor: 0, torporPerLevel: 0, torporRecoveryRate: 0, recoveryRateMultiplier: 0, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "blank")

let angler = Dino(name: "angler", foodType: carnivore, favoriteKibble: "kairuku egg", tameable: "yes", rideable: "yes", saddle: "no saddle needed", dossier: "Exploring the depths of the ocean can be difficult. The cold, the lack of air, and the shocking absence of light combine to make travel very dangerous. A tamed Anglerfish can use the natural light at the end of its stalks to illuminate the depths, making exploration not only safer, but more lucrative. Furthermore, these luminescent nodules can be harvested to create long-lasting organic light emplacements for surface dwellings!", baseAffinity: 1800, affinityPerLevel: 90, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 149.988007, baseTorpor: 900, torporPerLevel: 0.06, torporRecoveryRate: -7, recoveryRateMultiplier: 0.4, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Angler")

let anklyo = Dino(name: "anklyo", foodType: herbivore, favoriteKibble: "dilo egg", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 40", dossier: "Without a doubt, the best trait of a trained Ankylosaurus is its enormously dense tail. This tail is powerful enough to shatter the resource-laden rocks of the island. One of the wealthier human tribes on the island utilizes a squad of Ankylosaurus in its mines and quarries.", baseAffinity: 3000, affinityPerLevel: 150, foodConsumptionRate: -0.003156, consumptionRateMultiplier: 176.03154, baseTorpor: 420, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Anklyo")

let araneo = Dino(name: "araneo", foodType: carrion, favoriteKibble: "none", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 40", dossier: "As long as it is kept far from arachnophobics, domesticated Araneomorphus makes an excellent guardian creature for anyone wanting to avoid killing. Their strange web-spraying behavior is also quite helpful while hunting fast, fleeing prey. They are too small to be used as mounts, however...", baseAffinity: 4000, affinityPerLevel: 120, foodConsumptionRate: -0.001736, consumptionRateMultiplier: 864.055298, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2, wakingFoodAffinityMultiplier: 1, tamingMethod: "waking", image: "Icon - Araneo")

let argent = Dino(name: "argent", foodType: carnivore, favoriteKibble: "stego egg", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 55", dossier: "Argentavis is actually slower than the far more common Pteranodon, but it has significantly more Stamina, and can sustain flight for approximately three times as long. This makes them to best Creatures on the island for traveling or hauling cargo over long distances.",baseAffinity: 2000, affinityPerLevel: 100, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 199.983994, baseTorpor: 600, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Argent")

let arthropluera = Dino(name: "arthropluera", foodType: foodType_Arthropluera, favoriteKibble: "none", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 50", dossier: "Like most of the arthropods on the island, Arthropleura is simple minded and relatively easy to tame. It is an almost entirely military mount, useful mostly for attacking at a distance. Thanks to its unique defenses, whether hunting or warring, Arthropleura is generally safe from all but the largest of creatures.",baseAffinity: 3000, affinityPerLevel: 75, foodConsumptionRate: -0.001543, consumptionRateMultiplier: 648.088135, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2, wakingFoodAffinityMultiplier: 1.6, tamingMethod: "waking", image: "Icon - Arthropluera")

let beezlebufo = Dino(name: "beezlebufo", foodType: carnivore, favoriteKibble: "pulmonoscorpius egg", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 25", dossier: "Tamed Beelzebufo make for strange mounts. Strange mounts for strange people. Many tribes don't believe there's any reason to ride them. But some like the ability to take large vertical hops up huge walls and cliffs. Regardless of how it is ridden, Beelzebufo is also employed for its ability to quickly cull insects, and convert them into always-useful cementing paste.", baseAffinity: 1800, affinityPerLevel: 75, foodConsumptionRate: -0.001929, consumptionRateMultiplier: 648.00415, baseTorpor: 200, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 6.666, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Beezlebufo")

let bronto = Dino(name: "bronto", foodType: foodType_Bronto, favoriteKibble: "carbonemys egg", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 55", dossier: "Because of how docile it is, Brontosaurus makes the ideal pack-animal. Peaceful tribes use it to carry incredible quantities of resources, while warring tribes use it to mobilize their army. Unfortunately, its enormity means that most attempts to tame Brontosaurs can take longer than almost any other creature on the island.", baseAffinity: 10000, affinityPerLevel: 500, foodConsumptionRate: -0.007716,consumptionRateMultiplier: 180.001144, baseTorpor: 1900, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Bronto")

let carbonemys = Dino(name: "carbonemys", foodType: herbivore, favoriteKibble: "pternodon egg", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 25", dossier: "Carbonemys ' swift swim rate, fairly high strength, and lack of real threat makes it an ideal aquatic mount for many coastal survivors who shy away from violence. It can carry its rider to the ocean's resources at a fairly high speed, and are not particularly dangerous to tame.", baseAffinity: 3000, affinityPerLevel: 150, foodConsumptionRate: -0.003156, consumptionRateMultiplier: 352.06308, baseTorpor: 275, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Carbonemys")

let carno = Dino(name: "carno", foodType: carnivore, favoriteKibble: "anklyo egg", tameable: "yes", rideable: "yes", saddle: "unlocks at lvl 50", dossier: "Carnotaurus fills a very specific role. Larger and almost as fast as a Raptor, smaller but much faster than a Tyrannosaurus.", baseAffinity: 2000, affinityPerLevel: 100, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 199.983994, baseTorpor: 350, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Carno")



















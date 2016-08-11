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


let blank = Dino(name: " ", foodType: blankFoodType, favoriteKibble: " ", tameable: " ", rideable: " ", dossier: " ", baseAffinity: 0, affinityPerLevel: 0, foodConsumptionRate: 0, consumptionRateMultiplier: 0, baseTorpor: 0, torporPerLevel: 0, torporRecoveryRate: 0, recoveryRateMultiplier: 0, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "blank")

let angler = Dino(name: "angler", foodType: carnivore, favoriteKibble: "kairuku egg", tameable: "yes", rideable: "yes", dossier: "Exploring the depths of the ocean can be difficult. The cold, the lack of air, and the shocking absence of light combine to make travel very dangerous. A tamed Anglerfish can use the natural light at the end of its stalks to illuminate the depths, making exploration not only safer, but more lucrative. Furthermore, these luminescent nodules can be harvested to create long-lasting organic light emplacements for surface dwellings!", baseAffinity: 1800, affinityPerLevel: 90, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 149.988007, baseTorpor: 900, torporPerLevel: 0.06, torporRecoveryRate: -7, recoveryRateMultiplier: 0.4, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Angler")

let anklyo = Dino(name: "anklyo", foodType: herbivore, favoriteKibble: "dilo egg", tameable: "yes", rideable: "yes", dossier: "Without a doubt, the best trait of a trained Ankylosaurus is its enormously dense tail. This tail is powerful enough to shatter the resource-laden rocks of the island. One of the wealthier human tribes on the island utilizes a squad of Ankylosaurus in its mines and quarries.", baseAffinity: 3000, affinityPerLevel: 150, foodConsumptionRate: -0.003156, consumptionRateMultiplier: 176.03154, baseTorpor: 420, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Anklyo")

let araneo = Dino(name: "araneo", foodType: carrion, favoriteKibble: "none", tameable: "yes", rideable: "yes", dossier: "As long as it is kept far from arachnophobics, domesticated Araneomorphus makes an excellent guardian creature for anyone wanting to avoid killing. Their strange web-spraying behavior is also quite helpful while hunting fast, fleeing prey. They are too small to be used as mounts, however...", baseAffinity: 4000, affinityPerLevel: 120, foodConsumptionRate: -0.001736, consumptionRateMultiplier: 864.055298, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2, wakingFoodAffinityMultiplier: 1, tamingMethod: "waking", image: "Icon - Araneo")

let argent = Dino(name: "argent", foodType: carnivore, favoriteKibble: "stego egg", tameable: "yes", rideable: "yes", dossier: "Argentavis is actually slower than the far more common Pteranodon, but it has significantly more Stamina, and can sustain flight for approximately three times as long. This makes them to best Creatures on the island for traveling or hauling cargo over long distances.",baseAffinity: 2000, affinityPerLevel: 100, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 199.983994, baseTorpor: 600, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Argent")

let arthropluera = Dino(name: "arthropluera", foodType: foodType_arthropluera, favoriteKibble: "none", tameable: "yes", rideable: "yes", dossier: "Like most of the arthropods on the island, Arthropleura is simple minded and relatively easy to tame. It is an almost entirely military mount, useful mostly for attacking at a distance. Thanks to its unique defenses, whether hunting or warring, Arthropleura is generally safe from all but the largest of creatures.",baseAffinity: 3000, affinityPerLevel: 75, foodConsumptionRate: -0.001543, consumptionRateMultiplier: 648.088135, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2, wakingFoodAffinityMultiplier: 1.6, tamingMethod: "waking", image: "Icon - Arthropluera")

let beezlebufo = Dino(name: "beezlebufo", foodType: carnivore, favoriteKibble: "pulmonoscorpius egg", tameable: "yes", rideable: "yes", dossier: "Tamed Beelzebufo make for strange mounts. Strange mounts for strange people. Many tribes don't believe there's any reason to ride them. But some like the ability to take large vertical hops up huge walls and cliffs. Regardless of how it is ridden, Beelzebufo is also employed for its ability to quickly cull insects, and convert them into always-useful cementing paste.", baseAffinity: 1800, affinityPerLevel: 75, foodConsumptionRate: -0.001929, consumptionRateMultiplier: 648.00415, baseTorpor: 200, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 6.666, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Beezlebufo")

let bronto = Dino(name: "bronto", foodType: foodType_bronto, favoriteKibble: "carbonemys egg", tameable: "yes", rideable: "yes", dossier: "Because of how docile it is, Brontosaurus makes the ideal pack-animal. Peaceful tribes use it to carry incredible quantities of resources, while warring tribes use it to mobilize their army. Unfortunately, its enormity means that most attempts to tame Brontosaurs can take longer than almost any other creature on the island.", baseAffinity: 10000, affinityPerLevel: 500, foodConsumptionRate: -0.007716,consumptionRateMultiplier: 180.001144, baseTorpor: 1900, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Bronto")

let carbonemys = Dino(name: "carbonemys", foodType: herbivore, favoriteKibble: "pternodon egg", tameable: "yes", rideable: "yes", dossier: "Carbonemys ' swift swim rate, fairly high strength, and lack of real threat makes it an ideal aquatic mount for many coastal survivors who shy away from violence. It can carry its rider to the ocean's resources at a fairly high speed, and are not particularly dangerous to tame.", baseAffinity: 3000, affinityPerLevel: 150, foodConsumptionRate: -0.003156, consumptionRateMultiplier: 352.06308, baseTorpor: 275, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Carbonemys")

let carno = Dino(name: "carno", foodType: carnivore, favoriteKibble: "anklyo egg", tameable: "yes", rideable: "yes", dossier: "Carnotaurus fills a very specific role. Larger and almost as fast as a Raptor, smaller but much faster than a Tyrannosaurus.", baseAffinity: 2000, affinityPerLevel: 100, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 199.983994, baseTorpor: 350, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Carno")

let castoroides = Dino(name: "castoroides", foodType: herbivore, favoriteKibble: "gallimimus egg", tameable: "yes", rideable: "yes", dossier: "The value of a tamed Castoroides is obvious from its physiology. The creature naturally gathers wood extremely efficiently, far more than most species on the island. It's not the strongest creature, so it can only carry limited amounts, but it is a natural lumberjack!", baseAffinity: 2000, affinityPerLevel: 100, foodConsumptionRate: -0.002314, consumptionRateMultiplier: 160.056335, baseTorpor: 350, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 15, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Castoroides")

let compy = Dino(name: "compy", foodType: foodType_compy, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "Compsognathus can be tamed quite easily, so some tribes keep them for little more than friendly companionship. However they gain increasing significant attack power and speed when close proximity to other Compsognathus, as their pack aggression takes over their behavior. Additionally their distress call carries quite far, rapidly alerting the tribe and its pets to danger more efficiently, and increasing the likelihood of forming a so called 'Compy Gang'.", baseAffinity: 500, affinityPerLevel: 65, foodConsumptionRate: -0.000868, consumptionRateMultiplier: 1728.110596, baseTorpor: 25, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 13, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Compy")

let dilo = Dino(name: "dilo", foodType: carnivore_noKibble, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "Because of their shrill cry and their ability to attack intruders from range, Dilophosaurus seem most suited as guard dogs. Due to their small size, they are not suitable as mounts.", baseAffinity: 450, affinityPerLevel: 22.5, foodConsumptionRate: -0.000868, consumptionRateMultiplier: 1728.110596, baseTorpor: 75, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Dilo")

let dimetrodon = Dino(name: "dimetrodon", foodType: carnivore, favoriteKibble: "quetz egg", tameable: "yes", rideable: "no", dossier: "If Dimetrodon was a bit larger, or didn't have that massive sail, it would make a decent mount. However, its main use to survivors is to utilize the sail's insulating capabilities. Just being near a Dimetrodon gives excellent protection from the heat and the cold, which has saved my life through more than one ice blizzard in the frozen mountains!", baseAffinity: 1500, affinityPerLevel: 90, foodConsumptionRate: -0.001736, consumptionRateMultiplier: 160.010239, baseTorpor: 750, torporPerLevel: 0.06, torporRecoveryRate: -10, recoveryRateMultiplier: 2.5, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Dimetrodon")

let dimorphodon = Dino(name: "dimorphodon", foodType: carnivore_noKibble, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "Dimorphodon is one of the creatures on the island that is easily domesticated for companionship. But its use in combat is also quite clear: it will hunt in large groups to seek out enemy dino riders directly, harassing them to no end—regardless of the might of the mount upon they may be astride!", baseAffinity: 900, affinityPerLevel: 45, foodConsumptionRate: -0.001302, consumptionRateMultiplier: 1152.07373, baseTorpor: 100, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 8.333, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Dimorphodon")

let diplodocus = Dino(name: "diplodocus", foodType: foodType_diplodocus, favoriteKibble: "lystrosaurus egg", tameable: "yes", rideable: "yes", dossier: "Due to Diplodocus' smaller frame, it cannot support the type of 'platform' saddle that other large creatures can. To make up for this, many tribes instead use a eleven-seater passenger saddle that allows Diplodocus to carry 10 additional riders. These passengers often use ranged weapons to protect the creature, or to attack nearby enemies while on the move!", baseAffinity: 7500, affinityPerLevel: 375, foodConsumptionRate: -0.007716, consumptionRateMultiplier: 180.001144, baseTorpor: 3000, torporPerLevel: 0.06, torporRecoveryRate: -1, recoveryRateMultiplier: 0.75, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Diplodocus")

let direBear = Dino(name: "direbear", foodType: omnivore, favoriteKibble: "carno egg", tameable: "yes", rideable: "yes", dossier: "Once tamed, the Direbear is a strong and reliable mount. It can carry vast quantities of goods, and can sprint for extremely long, nearly infinite periods. It is not the fastest creature from a hard stop, but after building up momentum, its sustained overland speed builds to among the best on the Island. Of course, being able to feed a Direbear both meat and plantlife makes keeping one fairly convenient regardless of the environment.", baseAffinity: 4000, affinityPerLevel: 125, foodConsumptionRate: -0.003156, consumptionRateMultiplier: 150, baseTorpor: 1000, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 9, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Direbear")

let direWolf = Dino(name: "direwolf", foodType: carnivore, favoriteKibble: "carno egg", tameable: "yes", rideable: "yes", dossier: "Obviously, Canis is an amazing battle mount. It is fairly fast, very strong, and agile. It can jump almost as well as the Island's battle cats. Riding a supercharged 'Alpha' Canis into battle at the head of a bloodthirsty pack is a thrill for which most warriors would gladly proclaim: 'Today is a good day to die!'", baseAffinity: 1200, affinityPerLevel: 60, foodConsumptionRate: -0.001543, consumptionRateMultiplier: 288.039185, baseTorpor: 450, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 5, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Direwolf")

let dodo = Dino(name: "dodo", foodType: herbivore_noKibble, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "There is almost no reason to domesticate a Raphus replicare. It cannot carry enough to be a beast of burden, it does not provide much food, and it's too stupid to show companionship. I suppose it could work as a last-ditch food source, though.", baseAffinity: 450, affinityPerLevel: 22.5, foodConsumptionRate: -0.000868, consumptionRateMultiplier: 2880.184326, baseTorpor: 30, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Dodo")

let doedicurus = Dino(name: "doedicurus", foodType: herbivore, favoriteKibble: "dilo egg", tameable: "yes", rideable: "yes", dossier: "Doedicurus is a highly prized work animal on the island. Its spiked Tail is ideal for quickly shattering the large rocks, so Doedicurus is a very efficient quarry worker. And in case their quarry gets raided, Doedicurus-Riders have a very difficult-to-kill mount!", baseAffinity: 4000, affinityPerLevel: 150, foodConsumptionRate: -0.003156, consumptionRateMultiplier: 176.03154, baseTorpor: 800, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 7.5, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Doedicurus")

let dungBeetle = Dino(name: "dung beetle", foodType: foodType_dungBeetle, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "Scarabidae makes me think humans have been on the island for a long time. Why else would a creature evolve to be such a perfect pet? Most tribes jealously protect their Scarabidae, whom are handily tamed with the skilled use of some well-handled feces. These wondrous little organic biofactories are truly a sustainable, green, eco-friendly source of resources for living off the land. Oil becomes gas, which is generator fuel. Fertilizer means crops, which is human fuel. The scarabidae can power all aspects of island life!", baseAffinity: 900, affinityPerLevel: 50, foodConsumptionRate: -0.001488, consumptionRateMultiplier: 336.021515, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2, wakingFoodAffinityMultiplier: 1, tamingMethod: "waking", image: "Icon - Dungbeetle")

let dunkleosteus = Dino(name: "dunkleosteus", foodType: carnivore, favoriteKibble: "titanboa egg", tameable: "yes", rideable: "yes", dossier: "Dunkleosteus is an incredibly useful fish for coastal communities. Its powerful jaws make short work of the stone and oil formations found throughout the oceanic depths. While harvesting, Dunkleosteus can handily defend its rider from all but the largest threats in the waters. And once past its prime, the Dunkleosteus can be harvested for a fair amount of Chitin.", baseAffinity: 1300, affinityPerLevel: 60, foodConsumptionRate: -0.001852, consumptionRateMultiplier: 199.983994, baseTorpor: 1150, torporPerLevel: 0.06, torporRecoveryRate: -2, recoveryRateMultiplier: 0.5, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Dunkleosteus")

let gallimimus = Dino(name: "gallimimus", foodType: herbivore, favoriteKibble: "dimetrodon egg", tameable: "yes", rideable: "yes", dossier: "There are two general camps on the use of tamed Gallimimus. One camp thinks that their inability to actually harm hostile creatures, and their inability to harvest most resources, makes them primarily a burden to the tribe. The other camp thinks that their extreme speed and ability to jump long distances is among the best for scouting and exploring... or just making a quick getaway!", baseAffinity: 2200, affinityPerLevel: 95, foodConsumptionRate: -0.001929, consumptionRateMultiplier: 432.002777, baseTorpor: 420, torporPerLevel: 0.06, torporRecoveryRate: -1.67, recoveryRateMultiplier: 2.5, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Gallimimus")

let giganotosaurus = Dino(name: "giganotosaurus", foodType: carnivore, favoriteKibble: "quetz egg", tameable: "yes", rideable: "yes", dossier: "Taming Giganotosaurus is a dangerous prospect. Its rage reaction, even when tamed, can sometimes cause it to briefly turn on members of its own tribe. Indeed it may even throw off its rider if it has been sufficiently angered! And yet, the sheer size and immense power that the Giganotosaurus possesses means that some factions endeavor to tame it as a fear-inducing 'capital' beast of war—even at great risk!", baseAffinity: 5000, affinityPerLevel: 160, foodConsumptionRate: -0.002314, consumptionRateMultiplier: 160.056335, baseTorpor: 10000, torporPerLevel: 0.06, torporRecoveryRate: -25, recoveryRateMultiplier: 4.8, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Giganotosaurus")

let gigantopithecus = Dino(name: "gigantopithecus", foodType: herbivore, favoriteKibble: "titanboa egg", tameable: "yes", rideable: "yes", dossier: "In addition to being at home picking berries a tamed Gigantopithecus can be taught to harvest the fibers found on many island plants as well. It appears to be entirely content to pick at plants all day, eat the berries, and hold the fibers for its tribe. Playful once tamed, Gigantopithecus seems to enjoy throwing its shoulder-mounted rider into the air. It probably feels this is a game, but clever brigands can use this 'game' to vault over walls and small cliffs.", baseAffinity: 4600, affinityPerLevel: 75, foodConsumptionRate: -0.004156, consumptionRateMultiplier: 176.03154, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 0.5, wakingFoodAffinityMultiplier: 1.65, tamingMethod: "waking", image: "Icon - Gigantopithecus")

let ichthy = Dino(name: "ichthy", foodType: carnivore, favoriteKibble: "dodo egg", tameable: "yes", rideable: "yes", dossier: "I can’t think of a better mount for someone starting to explore the island’s seas and waterways. Ichthyosaurus is comparatively fast swimmer, and even in the wild will cozy right up to you and try to figure out what you’re doing. Taming these is actually pretty easy, as they seem to love humans and will be fed and tamed without the use of violence.", baseAffinity: 1500, affinityPerLevel: 75, foodConsumptionRate: -0.001929, consumptionRateMultiplier: 420, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2.5, wakingFoodAffinityMultiplier: 1.6, tamingMethod: "waking", image: "Icon - Ichthy")

let kairuku = Dino(name: "kairuku", foodType: carnivore_noKibble, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "There is no reason to tame Kairuku for combat, since they are useless in a fight. Still, Kairuku are regularly tamed for their cuteness and friendly nature, and the fact that their bodies run extremely hot. Just standing near Kairuku can help keep a survivor warm through long, harsh nights on the icebergs.", baseAffinity: 900, affinityPerLevel: 45, foodConsumptionRate: -0.001389, consumptionRateMultiplier: 1079.913574, baseTorpor: 300, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 10, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Kairuku")

let lystrosaurus = Dino(name: "lystrosaurus", foodType: foodType_lystrosaurus, favoriteKibble: "none", tameable: "yes", rideable: "no", dossier: "Not surprisingly, Lystrosaurus is an extremely loyal pet once tamed. It's a very fast learner, so it gains experience much more quickly than most other creatures. Additionally, its presence nearby appears to inspire allies, making them learn and gain experience more rapidly as well. Thusly, Lystrosaurus is an excellent addition to any tribe's hunting party.", baseAffinity: 2000, affinityPerLevel: 22.5, foodConsumptionRate: -0.000868, consumptionRateMultiplier: 2880.184326, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2, wakingFoodAffinityMultiplier: 1.6, tamingMethod: "waking", image: "Icon - Lystro")

let mammoth = Dino(name: "mammoth", foodType: herbivore, favoriteKibble: "raptor egg", tameable: "yes", rideable: "yes", dossier: "Mammuthus steincaput is a difficult beast to domesticate. Not because they are inherently stubborn, but because knocking one out to begin the taming process takes forever. Once tamed, however, Mammoths are one of the only creatures on the island that can uproot trees without shattering them.", baseAffinity: 5000, affinityPerLevel: 250, foodConsumptionRate: -0.004133, consumptionRateMultiplier: 192.027771, baseTorpor: 550, torporPerLevel: 0.06, torporRecoveryRate: -0.1, recoveryRateMultiplier: 3, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "Icon - Mammoth")

let manta = Dino(name: "manta", foodType: foodType_manta, favoriteKibble: "none", tameable: "yes", rideable: "yes", dossier: "While not the fastest swimmer around the island, Manta Mobula is the deadliest of small ocean mounts, and can be ridden bare-back. Tribes who value striking power over speed often keep large schools of Manta to ride. Its capability to briefly leap out of water provides it a showy tactic for avoiding combat as well. A quick jab through the heart onto an unsuspecting survivor can easily take them by surprise. Thusly, many tribes use it as an escort for their slower cargo-carrying swimmers.", baseAffinity: 1500, affinityPerLevel: 75, foodConsumptionRate: -0.001929, consumptionRateMultiplier: 420, baseTorpor: nil, torporPerLevel: nil, torporRecoveryRate: nil, recoveryRateMultiplier: nil, wakingFoodRateMultiplier: 2.5, wakingFoodAffinityMultiplier: 1.6, tamingMethod: "waking", image: "Icon - Manta")







































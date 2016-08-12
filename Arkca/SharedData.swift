//
//  SharedData.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import Foundation
import UIKit

/*
 iPhone 4
 -width: 320pt
 -height: 480pt
 
 iPhone 5
 -width: 320pt
 -height: 568pt
 
 iPhone 6
 -width: 375pt
 -height: 667pt
 
 iPhone 6 Plus
 -width: 414pt
 -height: 736pt
 */

//MARK: Shared Visual Data

let darkGreyColor = UIColor(red: 0.29, green: 0.29, blue: 0.29, alpha: 1)
let lightGreyColor = UIColor(red: 0.53, green: 0.53, blue: 0.53, alpha: 1)
let whiteColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
let clearColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)

let avenirFontXXLarge = UIFont(name: "Avenir", size: 36)
let avenirFontXLarge = UIFont(name: "Avenir", size: 20)
let avenirFontLarge = UIFont(name: "Avenir", size: 18)
let avenirFontMedium = UIFont(name: "Avenir", size: 16)
let avenirFontSmall = UIFont(name: "Avenir", size: 14)
let avenirFontXSmall = UIFont(name: "Avenir", size: 12)
let avenirFontXXSmall = UIFont(name: "Avenir", size: 10)

let alignCenter = NSTextAlignment.Center

let tabBarIconOff = UIImage(named: "TabBarIconOff")
let tabBarIconOn = UIImage(named: "TabBarIconOn")

var switches = [UISwitch]()
var foodLabels = [UILabel]()
var qtyLabels = [UILabel]()
var timeLabels = [UILabel]()
var narcoticsNeededLabels = [UILabel]()
var activeSwitch = Int()

func formatSwitches() {
    for i in switches {
        i.transform = CGAffineTransformMakeScale(0.75, 0.75)
    }
}

func formatFoodLabels() {
    for i in foodLabels {
        i.backgroundColor = whiteColor
        i.font = avenirFontSmall
        i.textColor = darkGreyColor
        i.textAlignment = alignCenter
        i.alpha = 1
    }
}

func formatQtyLabels() {
    for i in qtyLabels {
        i.backgroundColor = whiteColor
        i.font = avenirFontSmall
        i.textColor = darkGreyColor
        i.textAlignment = alignCenter
        i.alpha = 1
    }
}

func formatTimeLabels() {
    for i in timeLabels {
        i.backgroundColor = whiteColor
        i.font = avenirFontSmall
        i.textColor = darkGreyColor
        i.textAlignment = alignCenter
        i.alpha = 1
    }
}

func resetSwitches() {
    if selectedLevel == 0 {
        narcoticsNeededLabels[0].text = "0"
        narcoticsNeededLabels[1].text = "0"
    } else {
        narcoticsNeededLabels[0].text = String(Int(maxNarcotics[0]))
        narcoticsNeededLabels[1].text = String(Int(maxNarcoberries[0]))
    }
    
    switches[0].setOn(true, animated: true)
    switches[1].setOn(false, animated: true)
    switches[2].setOn(false, animated: true)
    switches[3].setOn(false, animated: true)
    switches[4].setOn(false, animated: true)
    switches[5].setOn(false, animated: true)
    switches[6].setOn(false, animated: true)
}

func getActiveSwitch() {
    for i in switches {
        if i.on {
            activeSwitch = switches.indexOf(i)!
        }
    }
}

func updateSwitchValues() {
    if selectedLevel == 0 {
        narcoticsNeededLabels[0].text = "0"
        narcoticsNeededLabels[1].text = "0"
    } else {
        narcoticsNeededLabels[0].text = String(Int(maxNarcotics[activeSwitch]))
        narcoticsNeededLabels[1].text = String(Int(maxNarcoberries[activeSwitch]))
    }
}

func addShadow(object:AnyObject) {
    let layer = object.layer
    layer.shadowColor = darkGreyColor.CGColor
    layer.shadowOpacity = 0.5
    layer.shadowRadius = 2
    layer.shadowOffset.height = 1
    layer.shadowOffset.width = 1
}

extension UIView {
    func addConstraintWithFormat(format:String, views: UIView...){
        var viewsDictionary = [String:UIView]()
        for (index, view) in views.enumerate() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

//MARK: Shared Dino Data

let nameList = ["angler","anklyo","araneo","argent"]

let hundredsArray = [0,1,2,3]
let tensArray = [0,1,2,3,4,5,6,7,8,9]
let onesArray = [0,1,2,3,4,5,6,7,8,9]

var hundredsColumn = Int()
var tensColumn = Int()
var onesColumn = Int()

var selectedLevel = Int()

var selectedDino = Dino.init(name: " ", foodType: blankFoodType, favoriteKibble: " ", tameable: " ", rideable: " ", dossier: " ", baseAffinity: 0, affinityPerLevel: 0, foodConsumptionRate: 0, consumptionRateMultiplier: 0, baseTorpor: 0, torporPerLevel: 0, torporRecoveryRate: 0, recoveryRateMultiplier: 0, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "blank")

var dossierDino = Dino.init(name: " ", foodType: blankFoodType, favoriteKibble: " ", tameable: " ", rideable: " ", dossier: " ", baseAffinity: 0, affinityPerLevel: 0, foodConsumptionRate: 0, consumptionRateMultiplier: 0, baseTorpor: 0, torporPerLevel: 0, torporRecoveryRate: 0, recoveryRateMultiplier: 0, wakingFoodRateMultiplier: nil, wakingFoodAffinityMultiplier: nil, tamingMethod: "standard", image: "blank")

let dinoList = [
//    allosaurus
    angler,
    anklyo,
    araneo,
    argent,
    arthropluera,
    beezlebufo,
    bronto,
    carbonemys,
    carno,
    castoroides,
    compy,
    dilo,
    dimetrodon,
    dimorphodon,
    diplodocus,
    direBear,
    direWolf,
    dodo,
    doedicurus,
    dungBeetle,
    dunkleosteus,
    gallimimus,
    giganotosaurus,
    gigantopithecus,
    ichthy,
    kairuku,
    lystrosaurus,
    mammoth,
    manta,
    megaloceros,
    megalodon,
    mesopithecus,
    mosasaurus,
    onyc,
    oviraptor,
    pachy,
    paracer,
    parasaur,
//    pelagornis,
    phiomia,
    plesiosaur,
    procoptodon,
    pteranodon,
    pulmonoscorpius,
    quetzal,
    raptor,
    rex,
    sabertooth,
    sarco,
    spino,
    stego,
    terrorBird,
//    titanosaur,
    trike,
    woollyRhino
]

var foodNames = [String]()
var foodNeeded = [Double]()
var tameTimeValues = [Double]()
var convertedTameTimes = [String]()
var nonBlankFood = [String]()
var maxNarcotics = [Double]()
var maxNarcoberries = [Double]()

func getFoodNames() {
    for i in 0...6 {
        foodNames.append(selectedDino.foodType.foodList[i].name)
        foodLabels[i].text = foodNames[i].capitalizedString
    }
}

func getFoodNeeded() {
    let totalAffinity = selectedDino.baseAffinity + (selectedDino.affinityPerLevel * Double(selectedLevel))
    if selectedDino.tamingMethod == "standard" {
        for i in selectedDino.foodType.foodList {
            foodNeeded.append(ceil(totalAffinity/i.affinity))
        }
    } else if  selectedDino.tamingMethod == "waking" {
        for i in selectedDino.foodType.foodList {
            foodNeeded.append(ceil(totalAffinity/i.affinity/selectedDino.wakingFoodAffinityMultiplier!))
        }
    }
    
    for i in 0...6 {
        qtyLabels[i].text = String(Int(foodNeeded[i]))
    }
}

func getTameTimeValues() {
    let food = selectedDino.foodType.foodList
    let foodRate = selectedDino.foodConsumptionRate * selectedDino.consumptionRateMutiplier
    if selectedDino.tamingMethod == "standard" {
        for i in 0...6 {
            tameTimeValues.append(foodNeeded[i] * -food[i].food / foodRate)
        }
    } else if selectedDino.tamingMethod == "waking" {
        for i in 0...6 {
            tameTimeValues.append(foodNeeded[i] * -food[i].food / foodRate / selectedDino.wakingFoodRateMultiplier!)
        }
    }
}

func getTameTimeConversion() {
    let formatter = NSNumberFormatter()
    formatter.minimumIntegerDigits = 2
    for i in tameTimeValues {
        let hrs = floor(i / 3600)
        let mins = floor((i - 3600 * hrs) / 60)
        let secs = floor(i - (hrs * 3600) - (60 * mins))
        
        convertedTameTimes.append("\(formatter.stringFromNumber(Int(hrs))!):\(formatter.stringFromNumber(Int(mins))!):\(formatter.stringFromNumber(Int(secs))!)")
    }
    for i in 0...6 {
        timeLabels[i].text = convertedTameTimes[i]
    }
}

func showCorrectLabels() {
    for i in 0...6 {
        switches[i].hidden = true
        foodLabels[i].hidden = true
        qtyLabels[i].hidden = true
        timeLabels[i].hidden = true
    }
    for i in foodNames {
        if i != " " {
            nonBlankFood.append(i)
        }
    }
    for i in 0...(nonBlankFood.count - 1) {
        switches[i].hidden = false
        foodLabels[i].hidden = false
        qtyLabels[i].hidden = false
        timeLabels[i].hidden = false
    }
}

func getNarcosNeeded() {
    if selectedDino.tamingMethod == "standard" {
        let baseRecoveryRate = selectedDino.torporRecoveryRate! * selectedDino.recoveryRateMultiplier!
        if selectedLevel > 0 {
            let totalTorporRate = baseRecoveryRate + pow(Double(selectedLevel) - 1,torporExponent) / (torporCoefficient / baseRecoveryRate)
            for i in tameTimeValues {
                maxNarcotics.append(ceil(i * -totalTorporRate / (narcotics.torpor - totalTorporRate * narcotics.time)))
                maxNarcoberries.append(ceil(i * -totalTorporRate / (narcoBerries.torpor - totalTorporRate * narcoBerries.time)))
            }
        } else {
            maxNarcotics = [0,0,0,0,0,0,0]
            maxNarcoberries = [0,0,0,0,0,0,0]
        }
    } else {
        maxNarcotics = [0,0,0,0,0,0,0]
        maxNarcoberries = [0,0,0,0,0,0,0]
    }
}

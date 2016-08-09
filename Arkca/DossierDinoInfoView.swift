//
//  DossierDinoInfoView.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class DossierViewController: UIViewController {
    
    static var screenWidth = UIScreen.mainScreen().bounds.width
    static var screenHeight = UIScreen.mainScreen().bounds.height
    
    //MARK: Background
    
    let background: UIImageView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0-80; w = (320/320)*320; h = (568/568)*568
        case 375: x = (375/320)*0; y = (667/568)*0-80; w = (375/320)*320; h = (667/568)*568
        case 414: x = (414/320)*0; y = (736/568)*0-80; w = (414/320)*320; h = (736/568)*568
        default: break
        }
        let background = UIImageView(frame: CGRect(x: x, y: y, width: w, height: h))
        background.contentMode = UIViewContentMode.ScaleAspectFill
        background.image = UIImage(named: "Background1")
        background.alpha = 1
        return background
    }()
    
    //MARK: ScrollView
    
    let scrollView: UIScrollView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        var w2 = Double()
        var h2 = Double()
        if screenHeight > 480{
            switch screenWidth {
            case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*320; h = (568/568)*568; w2 = (320/320)*320; h2 = (568/568)*668
            case 375: x = (375/320)*0; y = (667/568)*0; w = (375/320)*320; h = (667/568)*568; w2 = (375/320)*320; h2 = (667/568)*668
            case 414: x = (414/320)*0; y = (736/568)*0; w = (414/320)*320; h = (736/568)*568; w2 = (414/320)*320; h2 = (736/568)*668
            default: break
            }
        } else {
            x = (320/320)*0; y = (568/568)*0; w = (320/320)*320; h = (480/568)*568; w2 = (320/320)*320; h2 = (568/568)*668
        }
        
        let scrollView = UIScrollView(frame: CGRect(x: x, y: y, width: w, height: h))
        scrollView.contentSize = CGSize(width: w2, height: h2)
        scrollView.bounces = true
        return scrollView
    }()
    
    //MARK: ContentView
    
    let contentView: UIView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*100; w = (320/320)*320; h = (568/568)*(468*1.75)
        case 375: x = (375/320)*0; y = (667/568)*100; w = (375/320)*320; h = (667/568)*(468*1.75)
        case 414: x = (414/320)*0; y = (736/568)*100; w = (414/320)*320; h = (736/568)*(468*1.75)
        default: break
        }
        let contentView = UIImageView(frame: CGRect(x: x, y: y, width: w, height: h))
        contentView.backgroundColor = whiteColor
        addShadow(contentView)
        return contentView
    }()
    
    //MARK: DinoIcon
    
    let dinoIcon: UIImageView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*60; w = (320/320)*80; h = (568/568)*80
        case 375: x = (375/320)*20; y = (667/568)*60; w = (375/320)*80; h = (667/568)*80
        case 414: x = (414/320)*20; y = (736/568)*60; w = (414/320)*80; h = (736/568)*80
        default: break
        }
        let dinoIcon = UIImageView(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoIcon.image = UIImage(named: dossierDino.icon)
        addShadow(dinoIcon)
        return dinoIcon
    }()
    
    //MARK: DinoTitle
    
    let dinoTitle: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*120; y = (568/568)*96; w = (320/320)*180; h = (568/568)*80
        case 375: x = (375/320)*120; y = (667/568)*96; w = (375/320)*180; h = (667/568)*80
        case 414: x = (414/320)*120; y = (736/568)*96; w = (414/320)*180; h = (736/568)*80
        default: break
        }
        let dinoTitle = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoTitle.text = dossierDino.name.uppercaseString
        dinoTitle.font = avenirFontXLarge
        dinoTitle.textColor = darkGreyColor
        dinoTitle.textAlignment = NSTextAlignment.Center
        dinoTitle.adjustsFontSizeToFitWidth = true
        addShadow(dinoTitle)
        return dinoTitle
    }()
    
    //MARK: FoodTypeLabel
    
    let foodTypeLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*160; w = (320/320)*128; h = (568/568)*32
        case 375: x = (375/320)*20; y = (667/568)*160; w = (375/320)*128; h = (667/568)*32
        case 414: x = (414/320)*20; y = (736/568)*160; w = (414/320)*128; h = (736/568)*32
        default: break
        }
        let foodTypeLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        foodTypeLabel.text = "Food Type:"
        foodTypeLabel.font = avenirFontLarge
        foodTypeLabel.textColor = darkGreyColor
        foodTypeLabel.adjustsFontSizeToFitWidth = true
        return foodTypeLabel
    }()
    
    //MARK: KibbleTypeLabel
    
    let kibbleTypeLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*192; w = (320/320)*128; h = (568/568)*32
        case 375: x = (375/320)*20; y = (667/568)*192; w = (375/320)*128; h = (667/568)*32
        case 414: x = (414/320)*20; y = (736/568)*192; w = (414/320)*128; h = (736/568)*32
        default: break
        }
        let kibbleTypeLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        kibbleTypeLabel.text = "Kibble Type:"
        kibbleTypeLabel.font = avenirFontLarge
        kibbleTypeLabel.textColor = darkGreyColor
        kibbleTypeLabel.adjustsFontSizeToFitWidth = true
        return kibbleTypeLabel
    }()
    
    //MARK: TameableLabel
    
    let tameableLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*224; w = (320/320)*128; h = (568/568)*32
        case 375: x = (375/320)*20; y = (667/568)*224; w = (375/320)*128; h = (667/568)*32
        case 414: x = (414/320)*20; y = (736/568)*224; w = (414/320)*128; h = (736/568)*32
        default: break
        }
        let tameableLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        tameableLabel.text = "Tameable:"
        tameableLabel.font = avenirFontLarge
        tameableLabel.textColor = darkGreyColor
        tameableLabel.adjustsFontSizeToFitWidth = true
        return tameableLabel
    }()
    
    //MARK RideableLabel
    
    let rideableLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*256; w = (320/320)*128; h = (568/568)*32
        case 375: x = (375/320)*20; y = (667/568)*256; w = (375/320)*128; h = (667/568)*32
        case 414: x = (414/320)*20; y = (736/568)*256; w = (414/320)*128; h = (736/568)*32
        default: break
        }
        let rideableLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        rideableLabel.text = "Rideable:"
        rideableLabel.font = avenirFontLarge
        rideableLabel.textColor = darkGreyColor
        rideableLabel.adjustsFontSizeToFitWidth = true
        return rideableLabel
    }()
    
    //MARK: DossierLabel
    
    let dossierLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*288; w = (320/320)*128; h = (568/568)*32
        case 375: x = (375/320)*20; y = (667/568)*288; w = (375/320)*128; h = (667/568)*32
        case 414: x = (414/320)*20; y = (736/568)*288; w = (414/320)*128; h = (736/568)*32
        default: break
        }
        let dossierLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dossierLabel.text = "Dossier:"
        dossierLabel.font = avenirFontLarge
        dossierLabel.textColor = darkGreyColor
        dossierLabel.adjustsFontSizeToFitWidth = true
        return dossierLabel
    }()
    
    //MARK: DinoDossier
    
    let dinoDossier: UITextView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*20; y = (568/568)*320; w = (320/320)*280; h = (568/568)*228
        case 375: x = (375/320)*20; y = (667/568)*320; w = (375/320)*280; h = (667/568)*228
        case 414: x = (414/320)*20; y = (736/568)*320; w = (414/320)*280; h = (736/568)*228
        default: break
        }
        let dinoDossier = UITextView(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoDossier.editable = false
        dinoDossier.userInteractionEnabled = false
        dinoDossier.text = dossierDino.dossier
        dinoDossier.font = avenirFontSmall
        dinoDossier.textColor = lightGreyColor
        dinoDossier.textAlignment = NSTextAlignment.Left
        return dinoDossier
    }()
    
    //MARK: DinoFoodType
    
    let dinoFoodType: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*148; y = (568/568)*160; w = (320/320)*152; h = (568/568)*32
        case 375: x = (375/320)*148; y = (667/568)*160; w = (375/320)*152; h = (667/568)*32
        case 414: x = (414/320)*148; y = (736/568)*160; w = (414/320)*152; h = (736/568)*32
        default: break
        }
        let dinoFoodType = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoFoodType.text = dossierDino.foodType.name.capitalizedString
        dinoFoodType.font = avenirFontMedium
        dinoFoodType.textColor = lightGreyColor
        dinoFoodType.adjustsFontSizeToFitWidth = true
        return dinoFoodType
    }()
    
    //MARK: DinoKibbleType
    
    let dinoKibbleType: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*148; y = (568/568)*192; w = (320/320)*152; h = (568/568)*32
        case 375: x = (375/320)*148; y = (667/568)*192; w = (375/320)*152; h = (667/568)*32
        case 414: x = (414/320)*148; y = (736/568)*192; w = (414/320)*152; h = (736/568)*32
        default: break
        }
        let dinoKibbleType = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoKibbleType.text = dossierDino.favoriteKibble.capitalizedString
        dinoKibbleType.font = avenirFontMedium
        dinoKibbleType.textColor = lightGreyColor
        dinoKibbleType.adjustsFontSizeToFitWidth = true
        return dinoKibbleType
    }()
    
    //MARK: DinoTameable
    
    let dinoTameable: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*148; y = (568/568)*224; w = (320/320)*152; h = (568/568)*32
        case 375: x = (375/320)*148; y = (667/568)*224; w = (375/320)*152; h = (667/568)*32
        case 414: x = (414/320)*148; y = (736/568)*224; w = (414/320)*152; h = (736/568)*32
        default: break
        }
        let dinoTameable = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoTameable.text = dossierDino.tameable.capitalizedString
        dinoTameable.font = avenirFontMedium
        dinoTameable.textColor = lightGreyColor
        dinoTameable.adjustsFontSizeToFitWidth = true
        return dinoTameable
    }()
    
    //MARK: DinoRideable
    
    let dinoRideable: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*148; y = (568/568)*256; w = (320/320)*152; h = (568/568)*32
        case 375: x = (375/320)*148; y = (667/568)*256; w = (375/320)*152; h = (667/568)*32
        case 414: x = (414/320)*148; y = (736/568)*256; w = (414/320)*152; h = (736/568)*32
        default: break
        }
        let dinoRideable = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dinoRideable.text = dossierDino.rideable.capitalizedString
        dinoRideable.font = avenirFontMedium
        dinoRideable.textColor = lightGreyColor
        dinoRideable.adjustsFontSizeToFitWidth = true
        return dinoRideable
    }()
    
    //MARK: ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(background)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.addSubview(dinoIcon)
        scrollView.addSubview(dinoTitle)
        scrollView.addSubview(foodTypeLabel)
        scrollView.addSubview(kibbleTypeLabel)
        scrollView.addSubview(tameableLabel)
        scrollView.addSubview(rideableLabel)
        scrollView.addSubview(dossierLabel)
        scrollView.addSubview(dinoDossier)
        scrollView.addSubview(dinoFoodType)
        scrollView.addSubview(dinoKibbleType)
        scrollView.addSubview(dinoTameable)
        scrollView.addSubview(dinoRideable)
        
    }
}



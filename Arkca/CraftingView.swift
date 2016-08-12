//
//  CraftingComingSoon.swift
//  Arkca
//
//  Created by Steve on 8/12/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class CraftingViewController: UIViewController {
    
    static let screenWidth = UIScreen.mainScreen().bounds.width
    static let screenHeight = UIScreen.mainScreen().bounds.height
    
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
            case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*320; h = (568/568)*568; w2 = (320/320)*320; h2 = (568/568)*568.25
            case 375: x = (375/320)*0; y = (667/568)*0; w = (375/320)*320; h = (667/568)*568; w2 = (375/320)*320; h2 = (667/568)*568.25
            case 414: x = (414/320)*0; y = (736/568)*0; w = (414/320)*320; h = (736/568)*568; w2 = (414/320)*320; h2 = (736/568)*568.25
            default: break
            }
        } else {
            x = (320/320)*0; y = (568/568)*0; w = (320/320)*320; h = (480/568)*568; w2 = (320/320)*320; h2 = (568/568)*568.25
        }
        
        let scrollView = UIScrollView(frame: CGRect(x: x, y: y, width: w, height: h))
        scrollView.contentSize = CGSize(width: w2, height: h2)
        scrollView.bounces = true
        return scrollView
    }()
    
    //MARK: ComingSoonLabel
    
    let comingSoonLabel: UILabel = {
        let comingSoonLabel = UILabel(frame: CGRect(x: 0, y: -64, width: screenWidth, height: screenHeight))
        comingSoonLabel.text = "Crafting - Coming In A Future Update"
        comingSoonLabel.font = avenirFontSmall
        comingSoonLabel.tintColor = lightGreyColor
        comingSoonLabel.alpha = 0.25
        comingSoonLabel.textAlignment = NSTextAlignment.Center
        return comingSoonLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Crafting"
        view.backgroundColor = whiteColor
        view.addSubview(scrollView)
        scrollView.addSubview(comingSoonLabel)
        
    }
}

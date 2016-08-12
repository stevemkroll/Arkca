//
//  TabBar.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class TabBar: UITabBarController, UITabBarControllerDelegate {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        tabBar.barTintColor = darkGreyColor
        tabBar.tintColor = whiteColor
        tabBar.translucent = false
        
        let dossierTab = DossierNavBar(rootViewController: DossierTableViewController())
        let dossierIcon = UITabBarItem(title: "Dossier", image: tabBarIconOff, tag: 0)
        
        let tamingTab = TamingNavBar(rootViewController: TamingViewController())
        let tamingIcon = UITabBarItem(title: "Taming", image: tabBarIconOff, tag: 1)
        
        let cookingTab = CraftingNavBar(rootViewController: CookingViewController())
        let cookingIcon = UITabBarItem(title: "Cooking", image: tabBarIconOff, tag: 2)
        
        let craftingTab = CraftingNavBar(rootViewController: CraftingViewController())
        let craftingIcon = UITabBarItem(title: "Crafting", image: tabBarIconOff, tag: 3)
        
        dossierTab.tabBarItem = dossierIcon
        tamingTab.tabBarItem = tamingIcon
        cookingTab.tabBarItem = cookingIcon
        craftingTab.tabBarItem = craftingIcon
        
        let tabs = [dossierTab, tamingTab, cookingTab, craftingTab]
        
        self.viewControllers = tabs
        
        for i in tabs {
            i.tabBarItem.setTitleTextAttributes([NSFontAttributeName:avenirFontXXSmall!], forState: UIControlState.Normal)
            i.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:whiteColor], forState: UIControlState.Selected)
            i.tabBarItem.selectedImage = tabBarIconOn
            i.tabBarItem.titlePositionAdjustment = UIOffset.init(horizontal: 0, vertical: -1)
        }
    }
}

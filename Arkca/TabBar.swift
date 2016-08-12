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
        
        dossierTab.tabBarItem = dossierIcon
        tamingTab.tabBarItem = tamingIcon
        
        let tabs = [dossierTab,tamingTab]
        
        self.viewControllers = tabs
        
        dossierIcon.setTitleTextAttributes([NSFontAttributeName:avenirTabFont!], forState: UIControlState.Normal)
        dossierIcon.setTitleTextAttributes([NSForegroundColorAttributeName:whiteColor], forState: UIControlState.Selected)
        dossierIcon.selectedImage = tabBarIconOn
        
        dossierIcon.titlePositionAdjustment = UIOffset.init(horizontal: 0, vertical: -2)
        
        tamingIcon.setTitleTextAttributes([NSFontAttributeName:avenirTabFont!], forState: UIControlState.Normal)
        tamingIcon.setTitleTextAttributes([NSForegroundColorAttributeName:whiteColor], forState: UIControlState.Selected)
        tamingIcon.selectedImage = tabBarIconOn
        
        tamingIcon.titlePositionAdjustment = UIOffset.init(horizontal: 0, vertical: -2)
        
    }
}
















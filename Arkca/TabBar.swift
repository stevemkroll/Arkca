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
        
        let tamingTab = TamingNavBar(rootViewController: TamingViewController())
        let tamingIcon = UITabBarItem(title: "Taming", image: tabBarIconOff, selectedImage: tabBarIconOn)
        
        let dossierTab = DossierNavBar(rootViewController: DossierTableViewController())
        let dossierIcon = UITabBarItem(title: "Dossier", image: tabBarIconOff, selectedImage: tabBarIconOn)
        
        tamingTab.tabBarItem = tamingIcon
        dossierTab.tabBarItem = dossierIcon
        
        let tabs = [dossierTab,tamingTab]
        
        self.viewControllers = tabs
        
        tamingIcon.setTitleTextAttributes([NSFontAttributeName:avenirTabFont!], forState: UIControlState.Normal)
        dossierIcon.setTitleTextAttributes([NSFontAttributeName:avenirTabFont!], forState: UIControlState.Normal)
        
    }
}



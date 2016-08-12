//
//  CraftingNavBar.swift
//  Arkca
//
//  Created by Steve on 8/12/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class CraftingNavBar: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = darkGreyColor
        self.navigationBar.translucent = false
        self.navigationBar.titleTextAttributes = [NSFontAttributeName: avenirFontXLarge!, NSForegroundColorAttributeName : whiteColor]
        self.navigationBar.tintColor = whiteColor
    }
}

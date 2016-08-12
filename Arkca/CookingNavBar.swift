//
//  CookingNavBar.swift
//  Arkca
//
//  Created by Steve on 8/12/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class CookingNavBar: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = darkGreyColor
        self.navigationBar.translucent = false
        self.navigationBar.titleTextAttributes = [NSFontAttributeName: avenirFontLarge!, NSForegroundColorAttributeName : whiteColor]
        self.navigationBar.tintColor = whiteColor
    }
}

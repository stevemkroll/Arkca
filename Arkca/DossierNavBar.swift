//
//  DossierNavBar.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class DossierNavBar: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = darkGreyColor
        self.navigationBar.translucent = false
        self.navigationBar.titleTextAttributes = [NSFontAttributeName: avenirFontLarge!, NSForegroundColorAttributeName : whiteColor]
        self.navigationBar.tintColor = whiteColor
    }
}









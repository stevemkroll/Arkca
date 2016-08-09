//
//  DossierTableViewCell.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var dinoIcon: UIImageView = {
        let icon = UIImageView(frame: CGRect(x: 10, y: 10, width: 60, height: 60))
        return icon
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 80, y: 0, width: UIScreen.mainScreen().bounds.width - 110, height: 80))
        label.text = "Sample Text"
        label.font = avenirFontXLarge
        label.textColor = darkGreyColor
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = NSTextAlignment.Center
        return label
    }()
    
    func setupViews() {
        
        addSubview(dinoIcon)
        addSubview(nameLabel)
        
    }
}





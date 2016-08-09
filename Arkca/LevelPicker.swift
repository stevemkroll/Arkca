//
//  LevelPicker.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class LevelPickerData: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        var rows = Int()
        
        switch component {
        case 0: rows = hundredsArray.count
        case 1: rows = tensArray.count
        case 2: rows = onesArray.count
        default: break
        }
        return rows
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        var title = String()
        
        switch component {
        case 0: title = String(hundredsArray[row])
        case 1: title = String(tensArray[row])
        case 2: title = String(onesArray[row])
        default: break
        }
        return title
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = String(tensArray[row])
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:avenirFontLarge!,NSForegroundColorAttributeName:darkGreyColor])
        pickerLabel.attributedText = myTitle
        pickerLabel.textAlignment = NSTextAlignment.Center
        return pickerLabel
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch component {
        case 0: hundredsColumn = hundredsArray[row]
        case 1: tensColumn = tensArray[row]
        case 2: onesColumn = onesArray[row]
        default: break
        }
        
        let totalLevel = hundredsColumn * 100 + tensColumn * 10 + onesColumn
        selectedLevel = totalLevel
        
        foodNeeded.removeAll()
        tameTimeValues.removeAll()
        convertedTameTimes.removeAll()
        maxNarcotics.removeAll()
        maxNarcoberries.removeAll()
        
        getFoodNeeded()
        
        getTameTimeValues()
        getTameTimeConversion()
        
        getNarcosNeeded()
        
        getActiveSwitch()
        updateSwitchValues()
        
    }
}





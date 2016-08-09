//
//  NamePicker.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class NamePickerData: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dinoList.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dinoList[row].name
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = dinoList[row].name.capitalizedString
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:avenirFontLarge!,NSForegroundColorAttributeName:darkGreyColor])
        pickerLabel.attributedText = myTitle
        pickerLabel.textAlignment = NSTextAlignment.Center
        return pickerLabel
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        foodNames.removeAll()
        foodNeeded.removeAll()
        nonBlankFood.removeAll()
        tameTimeValues.removeAll()
        convertedTameTimes.removeAll()
        maxNarcotics.removeAll()
        maxNarcoberries.removeAll()
        
        selectedDino = dinoList[row]
        
        getFoodNames()
        getFoodNeeded()
        
        showCorrectLabels()
        
        getTameTimeValues()
        getTameTimeConversion()
        
        getNarcosNeeded()
        
        resetSwitches()
        
    }
}







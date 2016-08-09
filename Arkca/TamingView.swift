//
//  TamingView.swift
//  Arkca
//
//  Created by Steve on 8/9/16.
//  Copyright © 2016 SteveMKroll. All rights reserved.
//

import UIKit

class TamingViewController: UIViewController {
    
    static let screenWidth = UIScreen.mainScreen().bounds.width
    static let screenHeight = UIScreen.mainScreen().bounds.height
    
    //MARK: BackgroundImage
    
    let backgroundImage: UIImageView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0-80; w = (320/320)*320; h = (568/568)*568
        case 375: x = (375/320)*0; y = (667/568)*0-80; w = (375/320)*320; h = (667/568)*568
        case 414: x = (414/320)*0; y = (736/568)*0-80; w = (414/320)*320; h = (736/568)*568
        default: break
        }
        let backgroundImage = UIImageView(frame: CGRect(x: x, y: y, width: w, height: h))
        backgroundImage.contentMode = UIViewContentMode.ScaleAspectFill
        backgroundImage.image = UIImage(named: "Background1")
        backgroundImage.alpha = 0.5
        return backgroundImage
    }()
    
    //MARK: ScrollView
    
    let scrollView: UIScrollView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        var w2 = Double()
        var h2 = Double()
        if screenHeight > 480 {
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
        scrollView.backgroundColor = clearColor
        return scrollView
    }()
    
    //MARK: Container
    
    let container:UIView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        var w2 = Double()
        var h2 = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*320; h = (568/568)*568; w2 = (320/320)*320; h2 = (568/568)*568.25
        case 375: x = (375/320)*0; y = (667/568)*0+10; w = (375/320)*320; h = (667/568)*568; w2 = (375/320)*320; h2 = (667/568)*568.25
        case 414: x = (414/320)*0; y = (736/568)*0+18; w = (414/320)*320; h = (736/568)*568; w2 = (414/320)*320; h2 = (736/568)*568.25
        default: break
        }
        let container = UIScrollView(frame: CGRect(x: x, y: y, width: w, height: h))
        container.backgroundColor = clearColor
        return container
    }()
    
    //MARK: PickerBox
    
    let pickerBox: UIView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*10; y = (568/568)*10; w = (320/320)*300; h = (568/568)*120
        case 375: x = (375/320)*10; y = (667/568)*10; w = (375/320)*300; h = (667/568)*120
        case 414: x = (414/320)*10; y = (736/568)*10; w = (414/320)*300; h = (736/568)*120
        default: break
        }
        let pickerBox = UIView(frame: CGRect(x: x, y: y, width: w, height: h))
        pickerBox.backgroundColor = whiteColor
        pickerBox.layer.borderColor = lightGreyColor.CGColor
        pickerBox.layer.borderWidth = 1
        pickerBox.alpha = 1
        addShadow(pickerBox)
        return pickerBox
    }()
    
    //MARK: NamePicker
    
    let namePickerData = NamePickerData()
    
    let namePicker: UIPickerView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*150; h = (568/568)*120
        case 375: x = (375/320)*0; y = (667/568)*0; w = (375/320)*150; h = (667/568)*120
        case 414: x = (414/320)*0; y = (736/568)*0; w = (414/320)*150; h = (736/568)*120
        default: break
        }
        let namePicker = UIPickerView(frame: CGRect(x: x, y: y, width: w, height: h))
        namePicker.alpha = 1
        namePicker.selectRow(0, inComponent: 0, animated: true)
        return namePicker
    }()
    
    //MARK: LevelPicker
    
    let levelPickerData = LevelPickerData()
    
    let levelPicker: UIPickerView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*0; w = (320/320)*150; h = (568/568)*120
        case 375: x = (375/320)*150; y = (667/568)*0; w = (375/320)*150; h = (667/568)*120
        case 414: x = (414/320)*150; y = (736/568)*0; w = (414/320)*150; h = (736/568)*120
        default: break
        }
        let levelPicker = UIPickerView(frame: CGRect(x: x, y: y, width: w, height: h))
        levelPicker.alpha = 1
        return levelPicker
    }()
    
    //MARK: DinoLabel
    
    let dinoLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*150; h = (568/568)*43
        case 375: x = (375/320)*0; y = (667/568)*0; w = (375/320)*150; h = (667/568)*43
        case 414: x = (414/320)*0; y = (736/568)*0; w = (414/320)*150; h = (736/568)*43
        default: break
        }
        let dinolabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        dinolabel.text = "Select Dino"
        dinolabel.font = avenirFontSmall
        dinolabel.textColor = lightGreyColor
        dinolabel.textAlignment = alignCenter
        dinolabel.alpha = 1
        return dinolabel
    }()
    
    //MARK: LevelLabel
    
    let levelLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*0; w = (320/320)*150; h = (568/568)*43
        case 375: x = (375/320)*150; y = (667/568)*0; w = (375/320)*150; h = (667/568)*43
        case 414: x = (414/320)*150; y = (736/568)*0; w = (414/320)*150; h = (736/568)*43
        default: break
        }
        let levelLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        levelLabel.text = "Select Level"
        levelLabel.font = avenirFontSmall
        levelLabel.textColor = lightGreyColor
        levelLabel.textAlignment = alignCenter
        levelLabel.alpha = 1
        return levelLabel
    }()
    
    //MARK: LabelContainer
    
    let labelContainer: UIView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*300; h = (568/568)*43
        case 375: x = (375/320)*0; y = (667/568)*0+3; w = (375/320)*300; h = (667/568)*43
        case 414: x = (414/320)*0; y = (736/568)*0+5; w = (414/320)*300; h = (736/568)*43
        default: break
        }
        let labelContainer = UIView(frame: CGRect(x: x, y: y, width: w, height: h))
        labelContainer.backgroundColor = whiteColor
        return labelContainer
    }()
    
    //MARK: NarcoticsBox
    
    let narcoticsBox: UIView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*10; y = (568/568)*140; w = (320/320)*300; h = (568/568)*60
        case 375: x = (375/320)*10; y = (667/568)*140; w = (375/320)*300; h = (667/568)*60
        case 414: x = (414/320)*10; y = (736/568)*140; w = (414/320)*300; h = (736/568)*60
        default: break
        }
        let narcoticsBox = UIView(frame: CGRect(x: x, y: y, width: w, height: h))
        narcoticsBox.backgroundColor = whiteColor
        narcoticsBox.layer.borderColor = lightGreyColor.CGColor
        narcoticsBox.layer.borderWidth = 1
        narcoticsBox.alpha = 1
        addShadow(narcoticsBox)
        return narcoticsBox
    }()
    
    //MARK: NarcoticsLabel
    
    let narcoticsLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*0; w = (320/320)*150; h = (568/568)*30
        case 375: x = (375/320)*0; y = (667/568)*0; w = (375/320)*150; h = (667/568)*30
        case 414: x = (414/320)*0; y = (736/568)*0; w = (414/320)*150; h = (736/568)*30
        default: break
        }
        let narcoticsLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        narcoticsLabel.text = "Narcotics"
        narcoticsLabel.backgroundColor = clearColor
        narcoticsLabel.font = avenirFontSmall
        narcoticsLabel.textColor = lightGreyColor
        narcoticsLabel.textAlignment = alignCenter
        narcoticsLabel.alpha = 1
        return narcoticsLabel
    }()
    
    //MARK: NarcoberriesLabel
    
    let narcoberriesLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*0; w = (320/320)*150; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*0; w = (375/320)*150; h = (667/568)*30
        case 414: x = (414/320)*150; y = (736/568)*0; w = (414/320)*150; h = (736/568)*30
        default: break
        }
        let narcoberriesLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        narcoberriesLabel.text = "Narcoberries"
        narcoberriesLabel.backgroundColor = clearColor
        narcoberriesLabel.font = avenirFontSmall
        narcoberriesLabel.textColor = lightGreyColor
        narcoberriesLabel.textAlignment = alignCenter
        narcoberriesLabel.alpha = 1
        return narcoberriesLabel
    }()
    
    //MARK: NarcoticsNeeded
    
    let narcoticsNeeded: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*25; w = (320/320)*150; h = (568/568)*30
        case 375: x = (375/320)*0; y = (667/568)*25; w = (375/320)*150; h = (667/568)*30
        case 414: x = (414/320)*0; y = (736/568)*25; w = (414/320)*150; h = (736/568)*30
        default: break
        }
        let narcoticsNeeded = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        narcoticsNeeded.text = "0"
        narcoticsNeeded.backgroundColor = clearColor
        narcoticsNeeded.font = avenirFontLarge
        narcoticsNeeded.textColor = darkGreyColor
        narcoticsNeeded.textAlignment = alignCenter
        narcoticsNeeded.alpha = 1
        narcoticsNeededLabels.append(narcoticsNeeded)
        return narcoticsNeeded
    }()
    
    //MARK: NarcoberriesNeeded
    
    let narcoberriesNeeded: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*25; w = (320/320)*150; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*25; w = (375/320)*150; h = (667/568)*30
        case 414: x = (414/320)*150; y = (736/568)*25; w = (414/320)*150; h = (736/568)*30
        default: break
        }
        let narcoberriesNeeded = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        narcoberriesNeeded.text = "0"
        narcoberriesNeeded.backgroundColor = clearColor
        narcoberriesNeeded.font = avenirFontLarge
        narcoberriesNeeded.textColor = darkGreyColor
        narcoberriesNeeded.textAlignment = alignCenter
        narcoberriesNeeded.alpha = 1
        narcoticsNeededLabels.append(narcoberriesNeeded)
        return narcoberriesNeeded
    }()
    
    //MARK: TamingInfoBox
    
    let tamingInfoBox: UIView = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*10; y = (568/568)*210; w = (320/320)*300; h = (568/568)*234
        case 375: x = (375/320)*10; y = (667/568)*210; w = (375/320)*300; h = (667/568)*234
        case 414: x = (414/320)*10; y = (736/568)*210; w = (414/320)*300; h = (736/568)*234
        default: break
        }
        let tamingInfoBox = UIView(frame: CGRect(x: x, y: y, width: w, height: h))
        tamingInfoBox.backgroundColor = whiteColor
        tamingInfoBox.layer.borderColor = lightGreyColor.CGColor
        tamingInfoBox.layer.borderWidth = 1
        tamingInfoBox.alpha = 1
        addShadow(tamingInfoBox)
        return tamingInfoBox
    }()
    
    //MARK: FoodNameLabel
    
    let foodNameLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*0; w = (320/320)*100; h = (568/568)*24
        case 375: x = (375/320)*50; y = (667/568)*0; w = (375/320)*100; h = (667/568)*24
        case 414: x = (414/320)*50; y = (736/568)*0; w = (414/320)*100; h = (736/568)*24
        default: break
        }
        let foodNameLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        foodNameLabel.backgroundColor = clearColor
        foodNameLabel.text = "Food Type"
        foodNameLabel.font = avenirFontXSmall
        foodNameLabel.textColor = lightGreyColor
        foodNameLabel.textAlignment = alignCenter
        foodNameLabel.alpha = 1
        return foodNameLabel
    }()
    
    //MARK: QtyLabel
    
    let qtyLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*0; w = (320/320)*50; h = (568/568)*24
        case 375: x = (375/320)*150; y = (667/568)*0; w = (375/320)*50; h = (667/568)*24
        case 414: x = (414/320)*150; y = (736/568)*0; w = (414/320)*50; h = (736/568)*24
        default: break
        }
        let qtyLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qtyLabel.backgroundColor = clearColor
        qtyLabel.text = "Qty"
        qtyLabel.font = avenirFontXSmall
        qtyLabel.textColor = lightGreyColor
        qtyLabel.textAlignment = alignCenter
        qtyLabel.alpha = 1
        return qtyLabel
    }()
    
    //MARK: TimeLabel
    
    let timeLabel: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*0; w = (320/320)*100; h = (568/568)*24
        case 375: x = (375/320)*200; y = (667/568)*0; w = (375/320)*100; h = (667/568)*24
        case 414: x = (414/320)*200; y = (736/568)*0; w = (414/320)*100; h = (736/568)*24
        default: break
        }
        let timeLabel = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        timeLabel.backgroundColor = clearColor
        timeLabel.text = "hh:mm:ss"
        timeLabel.font = avenirFontXSmall
        timeLabel.textColor = lightGreyColor
        timeLabel.textAlignment = alignCenter
        timeLabel.alpha = 1
        return timeLabel
    }()
    
    //MARK: Food Labels
    
    let food1Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*20; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*20; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*20); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food1Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food1Label.backgroundColor = clearColor
        food1Label.hidden = false
        food1Label.text = "Kibble"
        food1Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food1Label)
        return food1Label
    }()
    
    let food2Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*50; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*50; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*50); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food2Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food2Label.backgroundColor = clearColor
        food2Label.hidden = false
        food2Label.text = "Raw Prime"
        food2Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food2Label)
        return food2Label
    }()
    
    let food3Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*80; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*80; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*80); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food3Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food3Label.backgroundColor = clearColor
        food3Label.hidden = false
        food3Label.text = "Cooked Prime"
        food3Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food3Label)
        return food3Label
    }()
    
    let food4Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*110; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*110; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*110); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food4Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food4Label.backgroundColor = clearColor
        food4Label.hidden = false
        food4Label.text = "Raw Meat"
        food4Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food4Label)
        return food4Label
    }()
    
    let food5Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*140; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*140; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*140); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food5Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food5Label.backgroundColor = clearColor
        food5Label.hidden = false
        food5Label.text = "Cooked Meat"
        food5Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food5Label)
        return food5Label
    }()
    
    let food6Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*170; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*170; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*170); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food6Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food6Label.backgroundColor = clearColor
        food6Label.hidden = true
        food6Label.text = "Food6"
        food6Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food6Label)
        return food6Label
    }()
    
    let food7Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*50; y = (568/568)*200; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*50; y = (667/568)*200; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*50); y = floor((736/568)*200); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let food7Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        food7Label.backgroundColor = clearColor
        food7Label.hidden = true
        food7Label.text = "Food7"
        food7Label.adjustsFontSizeToFitWidth = true
        foodLabels.append(food7Label)
        return food7Label
    }()
    
    //MARK: Qty Labels
    
    let qty1Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*20; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*20; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*20); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty1Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty1Label.backgroundColor = clearColor
        qty1Label.hidden = false
        qty1Label.text = "5"
        qty1Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty1Label)
        return qty1Label
    }()
    
    let qty2Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*50; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*50; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*50); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty2Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty2Label.backgroundColor = clearColor
        qty2Label.hidden = false
        qty2Label.text = "12"
        qty2Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty2Label)
        return qty2Label
    }()
    
    let qty3Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*80; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*80; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*80); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty3Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty3Label.backgroundColor = clearColor
        qty3Label.hidden = false
        qty3Label.text = "24"
        qty3Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty3Label)
        return qty3Label
    }()
    
    let qty4Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*110; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*110; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*110); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty4Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty4Label.backgroundColor = clearColor
        qty4Label.hidden = false
        qty4Label.text = "36"
        qty4Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty4Label)
        return qty4Label
    }()
    
    let qty5Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*140; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*140; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*140); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty5Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty5Label.backgroundColor = clearColor
        qty5Label.hidden = false
        qty5Label.text = "72"
        qty5Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty5Label)
        return qty5Label
    }()
    
    let qty6Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*170; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*170; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*170); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty6Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty6Label.backgroundColor = clearColor
        qty6Label.hidden = true
        qty6Label.text = "0"
        qty6Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty6Label)
        return qty6Label
    }()
    
    let qty7Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*150; y = (568/568)*200; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*150; y = (667/568)*200; w = (375/320)*50; h = (667/568)*30
        case 414: x = floor((414/320)*150); y = floor((736/568)*200); w = floor((414/320)*50); h = floor((736/568)*30)
        default: break
        }
        let qty7Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        qty7Label.backgroundColor = clearColor
        qty7Label.hidden = true
        qty7Label.text = "0"
        qty7Label.adjustsFontSizeToFitWidth = true
        qtyLabels.append(qty7Label)
        return qty7Label
    }()
    
    //MARK: Time Labels
    
    let time1Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*20; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*20; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*20); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time1Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time1Label.backgroundColor = clearColor
        time1Label.hidden = false
        time1Label.text = "00:23:59"
        time1Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time1Label)
        return time1Label
    }()
    
    let time2Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*50; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*50; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*50); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time2Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time2Label.backgroundColor = clearColor
        time2Label.hidden = false
        time2Label.text = "00:35:59"
        time2Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time2Label)
        return time2Label
    }()
    
    let time3Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*80; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*80; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*80); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time3Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time3Label.backgroundColor = clearColor
        time3Label.hidden = false
        time3Label.text = "01:11:59"
        time3Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time3Label)
        return time3Label
    }()
    
    let time4Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*110; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*110; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*110); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time4Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time4Label.backgroundColor = clearColor
        time4Label.hidden = false
        time4Label.text = "01:47:59"
        time4Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time4Label)
        return time4Label
    }()
    
    let time5Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*140; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*140; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*140); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time5Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time5Label.backgroundColor = clearColor
        time5Label.hidden = false
        time5Label.text = "03:35:59"
        time5Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time5Label)
        return time5Label
    }()
    
    let time6Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*170; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*170; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*170); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time6Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time6Label.backgroundColor = clearColor
        time6Label.hidden = true
        time6Label.text = "00:00:00"
        time6Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time6Label)
        return time6Label
    }()
    
    let time7Label: UILabel = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*200; y = (568/568)*200; w = (320/320)*100; h = (568/568)*30
        case 375: x = (375/320)*200; y = (667/568)*200; w = (375/320)*100; h = (667/568)*30
        case 414: x = floor((414/320)*200); y = floor((736/568)*200); w = floor((414/320)*100); h = floor((736/568)*30)
        default: break
        }
        let time7Label = UILabel(frame: CGRect(x: x, y: y, width: w, height: h))
        time7Label.backgroundColor = clearColor
        time7Label.hidden = true
        time7Label.text = "00:00:00"
        time7Label.adjustsFontSizeToFitWidth = true
        timeLabels.append(time7Label)
        return time7Label
    }()
    
    //MARK: Switches
    
    let switch1: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*20; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*20; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*20; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch1 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch1.hidden = false
        switch1.onTintColor = darkGreyColor
        switch1.setOn(true, animated: true)
        switches.append(switch1)
        return switch1
    }()
    
    let switch2: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*50; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*50; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*50; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch2 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch2.hidden = false
        switch2.onTintColor = darkGreyColor
        switch2.setOn(false, animated: true)
        switches.append(switch2)
        return switch2
    }()
    
    let switch3: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*80; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*80; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*80; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch3 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch3.hidden = false
        switch3.onTintColor = darkGreyColor
        switch3.setOn(false, animated: true)
        switches.append(switch3)
        return switch3
    }()
    
    let switch4: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*110; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*110; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*110; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch4 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch4.hidden = false
        switch4.onTintColor = darkGreyColor
        switch4.setOn(false, animated: true)
        switches.append(switch4)
        return switch4
    }()
    
    let switch5: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*140; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*140; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*140; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch5 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch5.hidden = false
        switch5.onTintColor = darkGreyColor
        switch5.setOn(false, animated: true)
        switches.append(switch5)
        return switch5
    }()
    
    let switch6: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*170; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*170; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*170; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch6 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch6.hidden = true
        switch6.onTintColor = darkGreyColor
        switch6.setOn(false, animated: true)
        switches.append(switch6)
        return switch6
    }()
    
    let switch7: UISwitch = {
        var x = Double()
        var y = Double()
        var w = Double()
        var h = Double()
        switch screenWidth {
        case 320: x = (320/320)*0; y = (568/568)*200; w = (320/320)*50; h = (568/568)*30
        case 375: x = (375/320)*0+4; y = (667/568)*200; w = (375/320)*50; h = (667/568)*30
        case 414: x = (414/320)*0+8; y = (736/568)*200; w = (414/320)*50; h = (736/568)*30
        default: break
        }
        let switch7 = UISwitch(frame: CGRect(x: x, y: y, width: w, height: h))
        switch7.hidden = true
        switch7.onTintColor = darkGreyColor
        switch7.setOn(false, animated: true)
        switches.append(switch7)
        return switch7
    }()
    
    //MARK: Switch Selected Functions
    
    func switch1Selected() {
        switches[0].setOn(true, animated: true)
        switches[1].setOn(false, animated: true)
        switches[2].setOn(false, animated: true)
        switches[3].setOn(false, animated: true)
        switches[4].setOn(false, animated: true)
        switches[5].setOn(false, animated: true)
        switches[6].setOn(false, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[0]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[0]))
        }
    }
    
    func switch2Selected() {
        switches[0].setOn(false, animated: true)
        switches[1].setOn(true, animated: true)
        switches[2].setOn(false, animated: true)
        switches[3].setOn(false, animated: true)
        switches[4].setOn(false, animated: true)
        switches[5].setOn(false, animated: true)
        switches[6].setOn(false, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[1]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[1]))
        }
    }
    
    func switch3Selected() {
        switches[0].setOn(false, animated: true)
        switches[1].setOn(false, animated: true)
        switches[2].setOn(true, animated: true)
        switches[3].setOn(false, animated: true)
        switches[4].setOn(false, animated: true)
        switches[5].setOn(false, animated: true)
        switches[6].setOn(false, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[2]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[2]))
        }
    }
    
    func switch4Selected() {
        switches[0].setOn(false, animated: true)
        switches[1].setOn(false, animated: true)
        switches[2].setOn(false, animated: true)
        switches[3].setOn(true, animated: true)
        switches[4].setOn(false, animated: true)
        switches[5].setOn(false, animated: true)
        switches[6].setOn(false, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[3]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[3]))
        }
    }
    
    func switch5Selected() {
        switches[0].setOn(false, animated: true)
        switches[1].setOn(false, animated: true)
        switches[2].setOn(false, animated: true)
        switches[3].setOn(false, animated: true)
        switches[4].setOn(true, animated: true)
        switches[5].setOn(false, animated: true)
        switches[6].setOn(false, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[4]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[4]))
        }
    }
    
    func switch6Selected() {
        switches[0].setOn(false, animated: true)
        switches[1].setOn(false, animated: true)
        switches[2].setOn(false, animated: true)
        switches[3].setOn(false, animated: true)
        switches[4].setOn(false, animated: true)
        switches[5].setOn(true, animated: true)
        switches[6].setOn(false, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[5]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[5]))
        }
    }
    
    func switch7Selected() {
        switches[0].setOn(false, animated: true)
        switches[1].setOn(false, animated: true)
        switches[2].setOn(false, animated: true)
        switches[3].setOn(false, animated: true)
        switches[4].setOn(false, animated: true)
        switches[5].setOn(false, animated: true)
        switches[6].setOn(true, animated: true)
        
        if selectedLevel == 0 {
            narcoticsNeeded.text = "0"
            narcoberriesNeeded.text = "0"
        } else {
            narcoticsNeeded.text = String(Int(maxNarcotics[6]))
            narcoberriesNeeded.text = String(Int(maxNarcoberries[6]))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Taming"
        view.backgroundColor = whiteColor
        
        namePicker.delegate = namePickerData
        namePicker.dataSource = namePickerData
        
        levelPicker.delegate = levelPickerData
        levelPicker.dataSource = levelPickerData
        
        view.addSubview(backgroundImage)
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(container)
        
        container.addSubview(pickerBox)
        container.addSubview(narcoticsBox)
        container.addSubview(tamingInfoBox)
        
        pickerBox.addSubview(namePicker)
        pickerBox.addSubview(levelPicker)
        pickerBox.addSubview(labelContainer)
        pickerBox.addSubview(dinoLabel)
        pickerBox.addSubview(levelLabel)
        
        narcoticsBox.addSubview(narcoticsLabel)
        narcoticsBox.addSubview(narcoberriesLabel)
        narcoticsBox.addSubview(narcoticsNeeded)
        narcoticsBox.addSubview(narcoberriesNeeded)
        
        tamingInfoBox.addSubview(foodNameLabel)
        tamingInfoBox.addSubview(qtyLabel)
        tamingInfoBox.addSubview(timeLabel)
        
        tamingInfoBox.addSubview(food1Label)
        tamingInfoBox.addSubview(food2Label)
        tamingInfoBox.addSubview(food3Label)
        tamingInfoBox.addSubview(food4Label)
        tamingInfoBox.addSubview(food5Label)
        tamingInfoBox.addSubview(food6Label)
        tamingInfoBox.addSubview(food7Label)
        
        tamingInfoBox.addSubview(qty1Label)
        tamingInfoBox.addSubview(qty2Label)
        tamingInfoBox.addSubview(qty3Label)
        tamingInfoBox.addSubview(qty4Label)
        tamingInfoBox.addSubview(qty5Label)
        tamingInfoBox.addSubview(qty6Label)
        tamingInfoBox.addSubview(qty7Label)
        
        tamingInfoBox.addSubview(time1Label)
        tamingInfoBox.addSubview(time2Label)
        tamingInfoBox.addSubview(time3Label)
        tamingInfoBox.addSubview(time4Label)
        tamingInfoBox.addSubview(time5Label)
        tamingInfoBox.addSubview(time6Label)
        tamingInfoBox.addSubview(time7Label)
        
        tamingInfoBox.addSubview(switch1)
        tamingInfoBox.addSubview(switch2)
        tamingInfoBox.addSubview(switch3)
        tamingInfoBox.addSubview(switch4)
        tamingInfoBox.addSubview(switch5)
        tamingInfoBox.addSubview(switch6)
        tamingInfoBox.addSubview(switch7)
        
        formatFoodLabels()
        formatQtyLabels()
        formatTimeLabels()
        formatSwitches()
        
        switch1.addTarget(self, action: #selector(switch1Selected), forControlEvents: UIControlEvents.ValueChanged)
        switch2.addTarget(self, action: #selector(switch2Selected), forControlEvents: UIControlEvents.ValueChanged)
        switch3.addTarget(self, action: #selector(switch3Selected), forControlEvents: UIControlEvents.ValueChanged)
        switch4.addTarget(self, action: #selector(switch4Selected), forControlEvents: UIControlEvents.ValueChanged)
        switch5.addTarget(self, action: #selector(switch5Selected), forControlEvents: UIControlEvents.ValueChanged)
        switch6.addTarget(self, action: #selector(switch6Selected), forControlEvents: UIControlEvents.ValueChanged)
        switch7.addTarget(self, action: #selector(switch7Selected), forControlEvents: UIControlEvents.ValueChanged)
        
        selectedDino = angler
        selectedLevel = 0
        
    }
}



import UIKit
import XCPlayground

let screen = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
screen.backgroundColor = UIColor.whiteColor()

let dimView = UIView()

func dismissDimView() {
    UIView.animateWithDuration(0.5, animations: {
        dimView.alpha = 0
    })
}

func animation() {
    dimView.backgroundColor = UIColor(white: 0, alpha: 0.5)
    dimView.frame = screen.frame
    dimView.alpha = 0
    dimView.addGestureRecognizer(UITapGestureRecognizer(target: dimView, action: Selector(dismissDimView())))
    
    screen.addSubview(dimView)
    
    UIView.animateWithDuration(0.5, animations: {
        dimView.alpha = 1
    })
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.setTitle("+", forState: UIControlState.Normal)
button.setTitleColor(UIColor.blackColor(), forState: .Normal)
button.setTitleColor(UIColor.whiteColor(), forState: .Highlighted)
button.titleLabel?.font = UIFont(name: "avenir", size: 36)
button.addTarget(button, action: Selector(animation()), forControlEvents: UIControlEvents.TouchUpInside)

screen.addSubview(button)
XCPlaygroundPage.currentPage.liveView = screen

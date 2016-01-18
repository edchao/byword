//
//  NavViewController.swift
//  byword
//
//  Created by Ed Chao on 1/18/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

extension UIColor {
    class func primaryColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 13/255, green: 13/255, blue: 13/255, alpha: alpha)
    }
    
    class func secondaryColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 113/255, green: 121/255, blue: 129/255, alpha: alpha)
    }
    
    class func primaryAccent(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red:  160/255, green: 203/255, blue: 185/255, alpha: alpha)
    }
    
    class func secondaryAccent(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 208/255, green: 72/255, blue: 72/255, alpha: alpha)
    }
    
    class func canvasColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: alpha)
    }
    
    class func neutralColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: alpha)
    }
    
    class func strokeColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: alpha)
    }
    
    class func headerColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 237/255, green: 241/255, blue: 240/255, alpha: alpha)
    }
}

let screenSize : CGRect = UIScreen.mainScreen().bounds


class NavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().backItem?.hidesBackButton = false
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.primaryColor()]
        UINavigationBar.appearance().tintColor = UIColor.primaryAccent(1.0)
        UINavigationBar.appearance().translucent = true
        UINavigationBar.appearance().shadowImage = UIImage()
        
        
        if let font = UIFont(name: "SanFranciscoDisplay-Medium", size: 17) {
            UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: font]
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    



}

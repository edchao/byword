//
//  AppDelegate.swift
//  byword
//
//  Created by Ed Chao on 1/18/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        if let window = window {
            window.backgroundColor = UIColor.whiteColor()
            
            window.makeKeyAndVisible()
            
            
            let libVC: LibViewController = LibViewController(nibName:nil, bundle: nil)
            libVC.transitioningDelegate = self

            window.rootViewController = NavViewController(rootViewController: libVC)

        }
        
        return true
        
    }


}


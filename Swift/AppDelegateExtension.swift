//
//  AppDelegateExtension.swift
//  NYHealthy
//
//  Created by NiYao on 5/19/16.
//  Copyright © 2016 SuneBearNi. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    func setupRootViewController() {
        /*
         custom methods for setup window
        window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = controllerForID(storyboardID)
        window!.makeKeyAndVisible()
         */
    }
    
    func switchRootViewControllerTo(destinationController: UIViewController) {
        if window?.rootViewController == nil {
            window?.rootViewController = destinationController
            window?.makeKeyAndVisible()
        } else {
            if window?.rootViewController?.presentedViewController != nil {
                window?.rootViewController?.dismissViewControllerAnimated(false, completion: { 
                    self.window?.rootViewController = destinationController
                })
            } else {
                window?.rootViewController = destinationController
            }
        }
        
    }
    
    func setupAppearance() {
        setupWindowAppearance()
        setupTabBarAppearance()
        setupNavigationBarAppearance()
    }
    
    private func setupTabBarAppearance() {
        /*
         custom methods setupTabBarAppearance
         
        let tabBar:UITabBar = UITabBar.appearance()
        tabBar.tintColor = ThemeManager.sharedManager().themeColor
        tabBar.backgroundImage = UIImage.unitImageForColor(UIColor.colorForAlpha(COLOR_HEX_WHITE, alpha: CGFloat( 0.9)))
        tabBar.shadowImage = UIImage.unitImageForColor(UIColor.colorForAlpha(COLOR_HEX_WHITE, alpha: CGFloat(0)))
        tabBar.translucent = true
         */
    }
    
    private func setupNavigationBarAppearance() {
        /* custom methods setupNavigationBarAppearance
        let navigationBar:UINavigationBar = UINavigationBar.appearance()
        navigationBar.tintColor = ThemeManager.sharedManager().forgroundColor
        navigationBar.translucent = false
        navigationBar.setBackgroundImage(UIImage.unitImageForColor(ThemeManager.sharedManager().backgroundColor),
                                         forBarMetrics: UIBarMetrics.Default)
        */
    }
    
    private func setupWindowAppearance() {
        /* custom methods setupWindowAppearance
        window?.layer.cornerRadius = CGFloat(5)
        window?.layer.masksToBounds = true
        */
    }
}
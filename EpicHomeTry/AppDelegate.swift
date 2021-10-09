//
//  AppDelegate.swift
//  EpicHomeTry
//
//  Created by Amr on 07/10/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
//        if onboardClasses.appFirstTime() {
//            let loadingVC = UIStoryboard.storyboard(with: "Loading").instantiateInitialViewController() as! TransparentNavigationController
//            window?.rootViewController = loadingVC
//        } else {
//            window?.rootViewController = onboardClasses.onboardViewConrtroller()
//        }
        
        window?.rootViewController = VC()
        
        
        window?.makeKeyAndVisible()
        
        
        return true
    }


}


//
//  AppDelegate.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/14/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit
import Crashlytics
import Fabric

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Fabric.with([Crashlytics.self])
        
        let navController = UINavigationController()
        navController.navigationBar.isHidden = true
        let isOnboardingFinished = UserDefaults.standard.bool(forKey: UserDefaultsKeys.isOnboardingFinished)
        let rootViewController = isOnboardingFinished ?
            ViewController.instantiateFromStoryboard(withName: .main) :
            OnboardingFirstController.instantiateFromStoryboard(withName: .onboarding)
        navController.viewControllers = [rootViewController]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        return true
    }
}


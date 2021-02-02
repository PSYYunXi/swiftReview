//
//  AppDelegate.swift
//  SwiftDemo
//
//  Created by yunxi on 2021/2/2.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabbarVC = PSYTabbarController();
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = tabbarVC
        window!.makeKeyAndVisible()
        return true
    }



}


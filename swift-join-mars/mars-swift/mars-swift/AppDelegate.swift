//
//  AppDelegate.swift
//  mars-swift
//
//  Created by Shi Jian on 2017/12/5.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        NetworkService.sharedInstance().delegate = NetworkEvent()
        NetworkService.sharedInstance().setCallBack()
        NetworkService.sharedInstance().createMars()
        NetworkService.sharedInstance().setClientVersion(200)
        NetworkService.sharedInstance().setLongLinkAddress("10.1.0.103", port: 8081)
        NetworkService.sharedInstance().setShortLinkPort(8080)
        NetworkService.sharedInstance().reportEvent_(onForeground: true)
        NetworkService.sharedInstance().makesureLongLinkConnect()
        
        NetworkStatus.sharedInstance().start(NetworkService.sharedInstance())
        
        MSLog.config(level: .debug, releaseLevel: .warning, path: "/xlogPath", prefix: "log")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        NetworkService.sharedInstance().reportEvent_(onForeground: false)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        NetworkService.sharedInstance().reportEvent_(onForeground: true)
        
        MSLog.destroy()
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
        NetworkService.sharedInstance().destroyMars()
        
    }


}


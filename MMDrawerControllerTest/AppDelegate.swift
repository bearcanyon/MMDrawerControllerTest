//
//  AppDelegate.swift
//  MMDrawerControllerTest
//
//  Created by KumagaiNaoki on 2016/06/07.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit
import MMDrawerController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var centerContainer: MMDrawerController?

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let centerViewController = mainStoryboard.instantiateViewControllerWithIdentifier("CenterView") as! ViewController
        
        let leftViewController = mainStoryboard.instantiateViewControllerWithIdentifier("LeftSideView") as! LeftViewController
        //     let leftViewController = mainStoryboard.instantiateViewControllerWithIdentifier("RightSideView") as! HogeViewController
        
        let leftSideNav = UINavigationController(rootViewController: leftViewController)
        let centerNav = UINavigationController(rootViewController: centerViewController)
        //     let rightNav = UINavigationController(rootViewController: rightViewController)
        
        centerContainer = MMDrawerController(centerViewController: centerNav, leftDrawerViewController: leftSideNav,rightDrawerViewController:nil)
        
        //オープン方法のモード指定
        centerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.All
        
        //クローズ方法のモード指定
        centerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.All
        
        window!.rootViewController = centerContainer
        window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


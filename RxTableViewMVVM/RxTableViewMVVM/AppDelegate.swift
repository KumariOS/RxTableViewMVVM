//  AppDelegate.swift
//  RxTableViewMVVM
//  Created by Ameet on 26/01/18.
//  Copyright © 2018 amit. All rights reserved.

//Instaled a bot.

import UIKit
import RxSwift
import RxCocoa

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        _ = Observable<Int>
            .interval(1, scheduler: MainScheduler.instance)
            .subscribe({ _ in
                print("Resource count: \(RxSwift.Resources.total).")
            })
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
}


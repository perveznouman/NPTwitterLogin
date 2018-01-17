//
//  AppDelegate.swift
//  TwitterLogin
//
//  Created by Nouman Pervez on 08/01/18.
//  Copyright © 2018 Nouman Pervez. All rights reserved.
//

import UIKit
import TwitterKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        TWTRTwitter.sharedInstance().start(withConsumerKey: "YOUR CONSUMER KEY", consumerSecret: "YOUR CONSUMER SECRET KEY")
        return true
    }

}


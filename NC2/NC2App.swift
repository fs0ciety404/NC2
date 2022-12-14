//
//  NC2App.swift
//  NC2
//
//  Created by Davide Ragosta on 07/12/22.
//

import SwiftUI
import SpriteKit

@main
struct NC2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  


    var body: some Scene {
        WindowGroup {
           ContentView()
        }
    }
}
 
class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
   
        return true
    }
}

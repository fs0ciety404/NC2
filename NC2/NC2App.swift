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
    // Use the AppDelegate to handle app-level events
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    // The body of the app is a WindowGroup containing a SkView
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// The AppDelegate handles app-level events
class AppDelegate: NSObject, UIApplicationDelegate {
    // Called when the app finishes launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Return true to indicate that the app was launched successfully
        return true
    }
}

//
//  FirebaseUAMApp.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 12/10/2021.
//

import SwiftUI
import Firebase

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct FirebaseUAMApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var sessionService = SessionServiceImpl()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                switch sessionService.state {
                case .loggedIn:
                    HomeView()
                case .loggedOut:
                    LoginView()
                }
            }
        }
    }
}

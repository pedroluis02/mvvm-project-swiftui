//
//  MvvmProjectSwiftUI1App.swift
//  MvvmProjectSwiftUI1
//
//  Created by Pedro Luis on 23/04/22.
//

import SwiftUI

@main
struct MvvmProjectSwiftUI1App: App {
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        print("App init method")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("App is active")
            case .inactive:
                print("App is inacative")
            case .background:
                print("App is in background")
            @unknown default:
                print("Unknown app state")
            }
        }
    }
}

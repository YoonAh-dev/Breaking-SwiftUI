//
//  SwiftUI_TutorialsApp.swift
//  SwiftUI-Tutorials
//
//  Created by SHIN YOON AH on 2022/02/14.
//

import SwiftUI

@main // app entry point
struct SwiftUI_TutorialsApp: App {
    // initalize a model object for a given property only once during the life time of the app
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

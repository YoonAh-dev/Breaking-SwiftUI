//
//  ContentView.swift
//  SwiftUI-Tutorials
//
//  Created by SHIN YOON AH on 2022/02/14.
//

import SwiftUI

// Custom TextView
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // environmentObject is empty -> preview fail
        ContentView()
            .environmentObject(ModelData())
    }
}

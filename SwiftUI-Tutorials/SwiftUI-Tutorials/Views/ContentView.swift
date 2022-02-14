//
//  ContentView.swift
//  SwiftUI-Tutorials
//
//  Created by SHIN YOON AH on 2022/02/14.
//

import SwiftUI

// Custom TextView
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // environmentObject is empty -> preview fail
        ContentView()
            .environmentObject(ModelData())
    }
}

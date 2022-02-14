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
        LandmarkDetail(landmark: landmarks[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

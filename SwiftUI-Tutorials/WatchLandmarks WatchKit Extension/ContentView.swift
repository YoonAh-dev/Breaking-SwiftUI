//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by SHIN YOON AH on 2022/02/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

//
//  MapView.swift
//  SwiftUI-Tutorials
//
//  Created by SHIN YOON AH on 2022/02/14.
//

import MapKit
import SwiftUI

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    // @State attribute: you can modify from more than one view.
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        // prefixing a state variable with $
        // reference to the underlying value
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}

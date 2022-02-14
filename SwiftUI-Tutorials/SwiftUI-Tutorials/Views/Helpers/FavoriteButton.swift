//
//  FavoriteButton.swift
//  SwiftUI-Tutorials
//
//  Created by SHIN YOON AH on 2022/02/14.
//

import SwiftUI

struct FavoriteButton: View {
    // changes made inside this view propagate back to the data source
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}

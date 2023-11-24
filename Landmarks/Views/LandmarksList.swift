//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Jack Kelley on 11/24/23.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
       
        }
    }
}

#Preview {
    LandmarksList()
}

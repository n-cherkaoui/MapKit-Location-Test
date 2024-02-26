//
//  ContentView.swift
//  MapKit Location Test
//
//  Created by Nawfal Cherkaoui Elmalki on 2/26/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = mapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color (.systemPink))
            .onAppear {
                viewModel.checkIfLocationServicesEnabled()
            }
    }
}

#Preview {
    MapView()
}

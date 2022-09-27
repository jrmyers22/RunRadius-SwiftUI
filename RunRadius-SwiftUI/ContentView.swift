//
//  ContentView.swift
//  RunRadius-SwiftUI
//
//  Created by Jacob Myers on 9/25/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    @State var radiusValue: Double = 0.5
    
    
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .accentColor(Color("SliderThumbColor"))
                .onAppear {
                    viewModel.checkIfLocationServicesIsEnabled()
                }.overlay(
                    Circle()
                        .foregroundColor(.orange)
                        .frame(width: 350 * radiusValue, height: 350 * radiusValue)
                        .opacity(0.35)
                        .allowsHitTesting(false)
                )
            
            VStack {
                Spacer()
                CardView(radiusValue: $radiusValue)
            }.ignoresSafeArea()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

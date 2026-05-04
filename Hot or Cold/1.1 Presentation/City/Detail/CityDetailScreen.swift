//
//  CityDetailScreen.swift
//  Hot or Cold
//
//  Created by Sindre L. Øyen on 04/05/2026.
//

import SwiftUI

struct CityDetailScreen: View {
    let city: City
    
    var body: some View {
        Text("Welcome to \(city.name)!")
            .font(.largeTitle)
            .padding()
    }
}

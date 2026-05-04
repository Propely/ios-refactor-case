//
//  City.swift
//  Hot or Cold
//
//  Created by Sindre L. Øyen on 04/05/2026.
//

struct City: Decodable, Hashable {
    let name: String
    let lat: Double
    let lon: Double
}

extension City: Identifiable {
    var id: String { name }
}

//
//  Instrument.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import Foundation

struct Instrument: Codable, Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
}

//
//  DataService.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import Foundation

struct DataService {
    func loadData() -> [Category] {
        
        guard let url = Bundle.main.url(forResource: "InstrumentsData", withExtension: "json") else {
            print("JSON file not found")
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let categories = try decoder.decode([Category].self, from: data)
            
            return categories
        } catch {
            print("Error decoding JSON file: \(error)")
            return []
        }
    }
}

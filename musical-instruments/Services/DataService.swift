//
//  DataService.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import Foundation

class DataService {
    
    
//    static func loadData() -> [Category] {
//        
//        print("Loading data...")
//        
//        guard let url = Bundle.main.url(forResource: "InstrumentsData", withExtension: "json") else {
//            print("JSON file not found")
//            return []
//        }
//        
//        do {
//            let data = try Data(contentsOf: url)
//            let categories = try JSONDecoder().decode([Category].self, from: data)
//            return categories
//        } catch {
//            print("Error loading data: \(error)")
//            return []
//        }
//    }
    
    static func loadData() -> [Category] {
        if let url = Bundle.main.url(forResource: "InstrumentsData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let categories = try decoder.decode([Category].self, from: data)
                
                return categories
            } catch {
                print("Error decoding JSON: \(error)")
                return []
            }
            
        } else {
            print("JSON file not found")
            return []
        }
    }
    
    
    
}



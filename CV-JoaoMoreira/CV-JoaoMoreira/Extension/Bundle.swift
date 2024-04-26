//
//  Bundle.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 25/04/2024.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T? {
        
        // Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            
            print("Failed to locate \(file) in bundle.")
            return nil
        }
        
        // Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            
            print("Failed to load \(file) from bundle.")
            return nil
        }
        
        // Create a decoder
        let decoder = JSONDecoder()
        
        // Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            
            print("Failed to decode \(file) from bundle.")
            return nil
        }
        
        // Return the ready-to-use data
        return loaded
    }
}

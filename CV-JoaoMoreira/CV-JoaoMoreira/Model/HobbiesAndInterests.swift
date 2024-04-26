//
//  HobbiesAndInterests.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 23/04/2024.
//

import Foundation

struct HobbiesAndInterests: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let from: String
    let to: String
    
    var period: String { "\(from)-\(to)" }
}

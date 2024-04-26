//
//  Project.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import Foundation

struct Project: Identifiable, Codable {
    let id: String
    let projectName: String
    let description: String
    let from: String
    let to: String
    let institutionLogoURLString: String
    
    var institutionLogoURL: URL? { URL(string: institutionLogoURLString) }
    var period: String { "\(from)-\(to)" }
}

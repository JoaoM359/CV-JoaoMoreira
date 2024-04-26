//
//  EducationalExperience.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import Foundation

struct EducationalExperience: Identifiable, Codable {
    let id: String
    let courseName: String
    let description: String
    let institutionName: String
    let from: String
    let to: String
    let location: String
    let institutionLogoURLString: String
    
    var institutionLogoURL: URL? { URL(string: institutionLogoURLString) }
    var period: String { "\(from)-\(to)" }
}

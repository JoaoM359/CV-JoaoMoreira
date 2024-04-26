//
//  ProfessionalExperience.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import Foundation

struct ProfessionalExperience: Identifiable, Codable {
    let id: String
    let companyName: String
    let position: String
    let from: String
    let to: String
    let location: String
    let description: String
    let mainResponsabilities: [String]
    let mainTechnologies: [String]
    let companyDescription: String
    let companyWebsite: String
    let companyLogoURLString: String
    
    var period: String { "\(from)-\(to)" }
    var companyLogoURL: URL? { URL(string: companyLogoURLString) }
    var companyWebsiteURL: URL? { URL(string: companyWebsite) }
}

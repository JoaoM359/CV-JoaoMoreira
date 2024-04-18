//
//  ProfessionalExperienceSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import Foundation

struct ProfessionalExperience: Hashable {
    
    let companyName: String
    let position: String
    let from: String
    let to: String
    let location: String
    let companyLogoURLString: String
    
    var period: String { from + "-" + to }
    var companyLogoURL: URL? { URL(string: companyLogoURLString) }
}

let professionalExperiences = [
    ProfessionalExperience(companyName: "Farfetch",
                           position: "Mobile iOS Engineer Intern",
                           from: "09/2023",
                           to: "03/2024",
                           location: "Porto, Portugal",
                           companyLogoURLString: "https://www.farfetch.com/static/images/logo.png"
                          ),
    ProfessionalExperience(companyName: "ITSector",
                           position: "Mobile iOS Engineer Intern",
                           from: "03/2023",
                           to: "06/2023",
                           location: "Porto, Portugal",
                           companyLogoURLString: "https://www.itsector.pt/hubfs/itsectorlogo.png"
                          )
]

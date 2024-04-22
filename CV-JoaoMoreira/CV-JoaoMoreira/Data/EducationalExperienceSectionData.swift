//
//  EducationalExperienceSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import Foundation

struct EducationalExperience: Hashable {
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


let educationalExperiences = [
    EducationalExperience(courseName: "Master's in Software Engineering",
                          description: """
                                        After my degree, I started my master's degree in order to continue learning more and more deeply.
                                        still in progress.
                                        """,
                          institutionName: "Instituto Superior de Engenharia do Porto",
                          from: "2023",
                          to: "2025",
                          location: "Porto, Portugal",
                          institutionLogoURLString: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Isep-logo.png/800px-Isep-logo.png"),
    
    EducationalExperience(courseName: "Degree in Informatics Engineering",
                          description: """
                                        This was my second educational experience. Here I finished my degree and had the opportunity to come into contact with lots of technologies and architectural patterns.
                                        I gained enormous knowledge on the most varied subjects related to IT.
                                        """,
                          institutionName: "Instituto Superior de Engenharia do Porto",
                          from: "2020",
                          to: "2023",
                          location: "Porto, Portugal",
                          institutionLogoURLString: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Isep-logo.png/800px-Isep-logo.png"),
    
    EducationalExperience(courseName: "Degree in Informatics Engineering",
                          description: """
                                        This was my first educational experience. I entered college with great motivation and the expectation of learning as much as possible in this area.
                                        Here I had my first contact with programming technologies and techniques.
                                        """,
                          institutionName: "Escola Superior de Tecnologia e Gestão do Porto",
                          from: "2019",
                          to: "2020",
                          location: "Porto, Portugal",
                          institutionLogoURLString: "https://www.estg.ipp.pt/comunicacao/logo_estg.png")
]

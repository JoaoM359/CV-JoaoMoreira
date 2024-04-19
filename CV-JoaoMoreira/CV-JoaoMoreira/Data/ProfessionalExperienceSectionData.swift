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
    let description: String
    let mainResponsabilities: [String]
    let mainTechnologies: [String]
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
                           description: """
                                        This was my second professional experience, still within the iOS development area. This experience allowed me to deepen my knowledge of native iOS and other technologies through contact with very intelligent people who transmitted me immense knowledge and technologies at the forefront of innovation.
                                        """,
                           mainResponsabilities: ["Implementation of functionalities in a mobile application using iOS technologies.",
                                                  "Maintenance of functionalities in a mobile application using iOS technologies.",
                                                  "Optimization of an iOS application."
                                                 ],
                           mainTechnologies: ["Swift",
                                              "Objective-C",
                                              "SwiftUI",
                                              "Fork",
                                              "GitLab"
                                             ],
                           companyLogoURLString: "https://www.farfetch.com/static/images/logo.png"
                          ),
    
    ProfessionalExperience(companyName: "ITSector",
                           position: "Mobile iOS Engineer Intern",
                           from: "03/2023",
                           to: "06/2023",
                           location: "Porto, Portugal",
                           description: """
                                        This was my first professional experience, having occurred through a curricular internship at the end of my degree. In this experience I had my first contact with iOS development with native technologies. I acquired a very solid base of knowledge and motivation to pursue a career in the area of iOS Deveolpment.
                                        """,
                           
                           mainResponsabilities: ["Incorporating features into a mobile app using iOS technologies.",
                                                  "Maintenance of functionalities in a mobile application using iOS technologies.",
                                                  "Optimization of an iOS application.",
                                                  "Generating high-quality new releases in accordance with the GitFlow methodology."
                                                 ],
                           mainTechnologies: ["Swift",
                                              "Objective-C",
                                              "SourceTree"
                                             ],
                           companyLogoURLString: "https://www.itsector.pt/hubfs/itsectorlogo.png"
                          )
]

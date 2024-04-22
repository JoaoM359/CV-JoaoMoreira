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
    let companyDescription: String
    let companyWebsite: String
    let companyLogoURLString: String
    
    var period: String { "\(from)-\(to)" }
    var companyLogoURL: URL? { URL(string: companyLogoURLString) }
    var companyWebsiteURL: URL? { URL(string: companyWebsite) }
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
                           companyDescription: """
                                                Farfetch is an online luxury fashion retail platform connecting consumers with boutiques and brands worldwide. It offers a curated selection of clothing, accessories, and lifestyle products, ranging from high-end designers to emerging labels. Farfetch provides a unique shopping experience, allowing customers to discover and purchase luxury items from around the globe through its website and app. It merges technology with fashion, offering features like augmented reality for virtual try-ons and personalized recommendations. Farfetch aims to redefine the luxury retail landscape by offering accessibility, diversity, and innovation in the realm of high-end fashion.
                                                """,
                           companyWebsite: "https://aboutfarfetch.com/about/farfetch",
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
                           
                           companyDescription: """
                                                ITSector is a technology company specializing in software development and IT solutions. It provides innovative digital products and services tailored to various industries, including banking, insurance, healthcare, and retail. ITSector offers expertise in areas such as software engineering, data analytics, cybersecurity, and digital transformation. By leveraging cutting-edge technologies like artificial intelligence and blockchain, ITSector helps businesses streamline operations, enhance customer experiences, and stay competitive in the digital era. With a focus on quality, agility, and client satisfaction, ITSector aims to be a trusted partner for organizations seeking to harness the power of technology for growth and efficiency.
                                                """,
                           companyWebsite: "https://www.itsector.pt/about-us",
                           companyLogoURLString: "https://www.itsector.pt/hubfs/itsectorlogo.png"
                          )
]

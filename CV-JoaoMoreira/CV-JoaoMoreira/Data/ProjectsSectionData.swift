//
//  ProjectsSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import Foundation

struct Project: Hashable {
    let projectName: String
    let description: String
    let from: String
    let to: String
    let institutionLogoURLString: String
    
    var institutionLogoURL: URL? { URL(string: institutionLogoURLString) }
    var period: String { "\(from)-\(to)" }
}

let projects = [
    Project(projectName: "Development of the project FLOYD at CISTER",
            description: """
                        FLOYD is a project about 5G/SDN Intelligent Systems For LOw latencY V2X communications in cross-Domain mobility applications.
                        During this period, I had the oportunity to join CISTER - Centro de Investigação em Sistemas Computacionais Embebidos e Tempo-Real, which is a research center associated with ISEP and help his development.
                        """,
            from: "03/2022",
            to: "12/2022",
            institutionLogoURLString: "https://lh4.googleusercontent.com/proxy/b8BDu_ccSAeHvAjqKjOHdHcizruPKGY8NLYD2My80y_4IUg1fEvLlqoW_jRO5qkOIvZO078gMLoQYqxCDw")
]

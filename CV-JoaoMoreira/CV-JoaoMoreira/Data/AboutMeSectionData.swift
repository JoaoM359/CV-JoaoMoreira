//
//  AboutMeSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 16/04/2024.
//

import Foundation
import SwiftUI

enum PointDirection {
    case left
    case right
}

struct AboutMeSection: Hashable {
    let sectionTitle: String
    let sectionBody: String
    let pointingDirection: PointDirection
}

let aboutMeSections = [
    
    AboutMeSection(sectionTitle: "Who am I?",
                   sectionBody: "My name is João Moreira, I am 23 years old and I'm from Porto, Portugal.",
                   pointingDirection: .right),
    
    AboutMeSection(sectionTitle: "Cool things about me",
                   sectionBody: "I consider myself a very communicative, sincere, responsible and committed person, easily adaptable and who is neither afraid nor turns his back on a challenge.",
                   pointingDirection: .left),
    
    AboutMeSection(sectionTitle: "Future plans",
                   sectionBody: """
                                I intend to start my professional career and learn as much as possible at a technical level in my field. If possible, I would like this area to be Mobile Development (iOS) or similar.
                                At a more advanced stage of my career I would like to venture into Teams and Product Management. 
                                Above all, I want to constantly learn and grow.
                                The sky is the limit!
                                """,
                   pointingDirection: .right)
]


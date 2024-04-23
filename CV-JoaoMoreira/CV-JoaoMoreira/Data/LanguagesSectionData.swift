//
//  LanguagesSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import Foundation

struct Language: Hashable {
    let languageName: String
    let listeningLevel: String
    let readingLevel: String
    let spokenProduction: String
    let spokenInteraction: String
    let writing: String
}

let languages = [
    
    Language(languageName: "Portuguese",
             listeningLevel: "Native",
             readingLevel: "Native",
             spokenProduction: "Native",
             spokenInteraction: "Native",
             writing: "Native"),
    
    Language(languageName: "English",
             listeningLevel: "B2",
             readingLevel: "B2",
             spokenProduction: "B2",
             spokenInteraction: "B2",
             writing: "B2")
]

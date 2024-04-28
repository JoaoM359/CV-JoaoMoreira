//
//  Languages.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import Foundation

struct Language: Identifiable, Codable {
    let id: String
    let languageName: String
    let listeningLevel: String
    let readingLevel: String
    let spokenProduction: String
    let spokenInteraction: String
    let writing: String
}

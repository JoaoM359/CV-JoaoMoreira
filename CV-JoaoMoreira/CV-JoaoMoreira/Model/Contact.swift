//
//  ContactsSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 25/04/2024.
//

import Foundation

struct Contact: Identifiable, Codable {
    let id: String
    let contactName: String
    let contact: String
    let isLink: Bool
}

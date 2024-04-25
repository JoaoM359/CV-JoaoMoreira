//
//  ContactsSectionData.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 25/04/2024.
//

import Foundation

struct Contact: Identifiable {
    let id: UUID
    let contactName: String
    let contact: String
    let isLink: Bool
}

let contacts = [
    
    Contact(id: UUID(),
            contactName: "Whatsapp",
            contact: "(+351) 916930348",
            isLink: false),
    
    Contact(id: UUID(),
            contactName: "Email",
            contact: "359.joao@gmail.com",
            isLink: false),
    
    Contact(id: UUID(),
            contactName: "LinkedIn",
            contact: "www.linkedin.com/in/joaomoreira359",
            isLink: true)
]

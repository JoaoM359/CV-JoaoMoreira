//
//  ContactsSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 25/04/2024.
//

import SwiftUI

struct ContactsSectionScreen: View {
    var body: some View {
        List(contacts) { contact in
            HStack {
                Image(contact.contactName.lowercased())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                Text(contact.contactName)
                    .font(.title3)
                    .bold()
                Spacer()
                if(contact.isLink) {
                    Link(contact.contact, destination: URL(string: contact.contact)!)
                    
                    
                } else {
                    Text(contact.contact)
                    
                }
                
            }
            
            
        }
        .navigationTitle("Contacts")
    }
}

#Preview {
    ContactsSectionScreen()
}

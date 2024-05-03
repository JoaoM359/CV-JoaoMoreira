//
//  ContactsSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 25/04/2024.
//

import SwiftUI

struct ContactsSectionScreen: View {
    
    // MARK: - Properties
    let navigationTitle: NavigationTitles
    
    private let contacts: [Contact]? = Bundle.main.decode(.contacts)
    
    // MARK: - Body
    var body: some View {
        
        if let contacts {
            
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
                } //: HSTACK
            } //: LIST
            .navigationTitle(navigationTitle.rawValue)
        }
    } //: BODY
}

#Preview {
    
    ContactsSectionScreen(navigationTitle: .contacts)
}

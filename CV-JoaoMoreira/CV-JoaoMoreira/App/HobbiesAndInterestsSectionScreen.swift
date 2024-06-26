//
//  HobbiesAndInterestsSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 23/04/2024.
//

import SwiftUI

struct HobbiesAndInterestsSectionScreen: View {
    
    // MARK: - Properties
    let navigationTitle: NavigationTitles
    
    private let hobbiesAndInterests: [HobbiesAndInterests]? = Bundle.main.decode(.hobbiesAndInterests)
    
    // MARK: - Body
    var body: some View {
        
        if let hobbiesAndInterests {
            
            List(hobbiesAndInterests) { hobbie in
                
                DisclosureGroup (
                    content: {
                        
                        Text(hobbie.description).multilineTextAlignment(.leading)
                    },
                    label: {
                        
                        HStack {
                            Image(hobbie.name.lowercased())
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            Text(hobbie.name).bold()
                        } //: HSTACK
                    }
                ) //: DISCLOSURE GROUP
            } //: LIST
            .navigationTitle(navigationTitle.rawValue)
        }
    } //: BODY
}

#Preview {
    
    HobbiesAndInterestsSectionScreen(navigationTitle: .hobbiesAndInterests)
}

//
//  HobbiesAndInterestsSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 23/04/2024.
//

import SwiftUI

struct HobbiesAndInterestsSectionScreen: View {
    
    let hobbiesAndInterests: [HobbiesAndInterests]? = Bundle.main.decode("HobbiesAndInterestsData.json")
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
                        }
                        
                    }
                )
            }
            .navigationTitle("Hobbies and Interests")
        }
    }
}

#Preview {
    HobbiesAndInterestsSectionScreen()
}

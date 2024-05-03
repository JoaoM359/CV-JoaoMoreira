//
//  EducationalExperienceScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct EducationalExperienceScreen: View {
    
    // MARK: - Properties
    let navigationTitle: NavigationTitles
    let placeHolderImageName: PlaceholderIcons
    
    private let educationalExperiences: [EducationalExperience]? = Bundle.main.decode(.educationalExperience)
    
    // MARK: - Body
    var body: some View {
        
        ScrollView {
            
            if let educationalExperiences {
                
                ForEach(educationalExperiences) { educationExperence in
                    
                    EducationalExperienceChipView(educationExperience: educationExperence,
                                                  placeHolderImageName: placeHolderImageName)
                    Divider()
                } //: LOOP
            }
        } //: SCROLL
        .navigationTitle(navigationTitle.rawValue)
    } //: BODY
}

#Preview {
    
    EducationalExperienceScreen(navigationTitle: .educationalExperience,
                                placeHolderImageName: .educationalExperience)
}

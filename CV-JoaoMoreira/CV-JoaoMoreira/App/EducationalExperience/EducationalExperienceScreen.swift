//
//  EducationalExperienceScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct EducationalExperienceScreen: View {
    
    // MARK: - Properties
    let placeHolderImageName: String
    
    // MARK: - Body
    var body: some View {
        ScrollView {
            ForEach(educationalExperiences, id: \.self) { educationExperence in
                EducationalExperienceChipView(educationExperience: educationExperence,
                                              placeHolderImageName: placeHolderImageName)
                Divider()
            } //: LOOP
        } //: SCROLL
        .navigationTitle("Educational Experiences")
    } //: BODY
}

#Preview {
    EducationalExperienceScreen(placeHolderImageName: "graduationcap")
}

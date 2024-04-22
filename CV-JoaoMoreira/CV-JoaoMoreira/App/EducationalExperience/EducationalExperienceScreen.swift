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
                EducationalExperienceChipView(imageURL: educationExperence.institutionLogoURLString,
                                              placeHolderImageName: placeHolderImageName,
                                              courseName: educationExperence.courseName,
                                              period: educationExperence.period)
                Divider()
            } //: LOOP
            
        } //: SCROLL
        .navigationTitle("Educational EXperiences")
    } //: BODY
}

#Preview {
    EducationalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
}

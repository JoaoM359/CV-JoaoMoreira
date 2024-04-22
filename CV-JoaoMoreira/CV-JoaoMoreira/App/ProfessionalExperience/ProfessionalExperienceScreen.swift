//
//  ProfessionalExperienceScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct ProfessionalExperienceScreen: View {
    
    // MARK: - Properties
    
    
    let placeHolderImageName: String
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(professionalExperiences, id: \.self) { professionalExperience in
                    NavigationLink  {
                        ProfessionalExperienceDetailScreen(professionalExperience: professionalExperience, placeholderImageName: placeHolderImageName)
                    } label: {
                        ProfessionalExperienceChipView(professionalExperience: professionalExperience, placeHolderImageName: placeHolderImageName)
                            .background(LinearGradient(colors: [.cyan, .baseBlue], startPoint: .bottom, endPoint: .topLeading))
                            .clipShape(RoundedRectangle(cornerRadius: 15)).shadow(color: .black, radius: 10, y: 5)
                            .multilineTextAlignment(.leading)
                    }
                    .foregroundStyle(.black)
                } // LOOP
                .padding()
            } //: SCROLL
            .navigationTitle("Professional Experiences")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    } //: BODY
}

#Preview {
    ProfessionalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
}

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
    private let professionalExperiences: [ProfessionalExperience]? = Bundle.main.decode("ProfessionalExperienceData.json")
    
    // MARK: - Body
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                if let professionalExperiences {
                    
                    ForEach(professionalExperiences) { professionalExperience in
                        NavigationLink  {
                            
                            ProfessionalExperienceDetailScreen(professionalExperience: professionalExperience,
                                                               placeholderImageName: placeHolderImageName)
                        } label: {
                            
                            ProfessionalExperienceChipView(professionalExperience: professionalExperience,
                                                           placeHolderImageName: placeHolderImageName)
                            .background(
                                LinearGradient(colors: [.cyan, .baseBlue],
                                               startPoint: .bottom,
                                               endPoint: .topLeading)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(color: .black,
                                    radius: 10,
                                    y: 5)
                            .multilineTextAlignment(.leading)
                        } //: NAV LINK
                        .foregroundStyle(.black)
                    } // LOOP
                    .padding()
                }
            } //: SCROLL
            .navigationTitle("Professional Experiences")
            .navigationBarTitleDisplayMode(.inline)
        } //: NAV STACK
    } //: BODY
}

#Preview {
    
    ProfessionalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
}

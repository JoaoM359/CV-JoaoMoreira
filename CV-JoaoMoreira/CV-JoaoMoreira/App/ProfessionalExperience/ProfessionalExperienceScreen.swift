//
//  ProfessionalExperienceScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct ProfessionalExperienceScreen: View {
    
    // MARK: - Properties
    let imageURL: String
    
    let placeHolderImageName: String
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible())
                ]) {
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
                    }
                }
                .padding()
            } //: SCROLL
            .navigationTitle("Professional Experiences")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    } //: BODY
}

#Preview {
    ProfessionalExperienceScreen(imageURL: "https://cdn.icon-icons.com/icons2/3913/PNG/512/farfetch_logo_icon_248576.png",
                                 placeHolderImageName: "laptopcomputer.and.iphone")
}

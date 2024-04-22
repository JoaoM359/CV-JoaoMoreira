//
//  EducationalExperienceChipView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct EducationalExperienceChipView: View {
    
    // MARK: - Properties
    
    let educationExperience: EducationalExperience
    let placeHolderImageName: String
    
    // MARK: - Body
    var body: some View {
        
        VStack(alignment: .leading) {
            AsyncImage(url: educationExperience.institutionLogoURL) { phase in
                switch phase {
                case .empty:
                    Image(systemName: placeHolderImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.baseBlue)
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                    
                case .failure:
                    Image(systemName: placeHolderImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.baseBlue)
                @unknown default:
                    fatalError("Unhandled async image phase")
                }
            }
            
            Text(educationExperience.courseName)
                .font(.title3).bold()
            
            Text("Period: ").bold() + Text(educationExperience.period)
                .font(.body)
            
            Text("\nDescription: ").bold() + Text(educationExperience.description)
            
        }.padding()
        
        
    }
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    EducationalExperienceChipView(educationExperience: educationalExperiences[0],
                                  placeHolderImageName: "laptopcomputer.and.iphone")
}

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
    let placeHolderImageName: PlaceholderIcons
    
    // MARK: - Body
    var body: some View {
        
        VStack(alignment: .leading) {
            
            AsyncImage(url: educationExperience.institutionLogoURL) { phase in
                switch phase {
                    
                case .empty:
                    Image(systemName: placeHolderImageName.rawValue)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.baseBlue)
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                    
                case .failure:
                    Image(systemName: placeHolderImageName.rawValue)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.baseBlue)
                    
                @unknown default:
                    fatalError("Unhandled async image phase")
                }
            } //: ASYNC IMAGE
            
            Text(educationExperience.courseName)
                .font(.title3).bold()
            
            Text("Period: ").bold() + Text(educationExperience.period)
                .font(.body)
            
            Text("\nDescription: ").bold() + Text(educationExperience.description)
            
        } //: VSTACK
        .padding()
    } //: BODY
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    
    EducationalExperienceChipView(educationExperience: EducationalExperience(id: "1",
                                                                             courseName: "course",
                                                                             description: "desc",
                                                                             institutionName: "institution",
                                                                             from: "from",
                                                                             to: "to",
                                                                             location: "location",
                                                                             institutionLogoURLString: "url"),
                                  placeHolderImageName: .educationalExperience)
}

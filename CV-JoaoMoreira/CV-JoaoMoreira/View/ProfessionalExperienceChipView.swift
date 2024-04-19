//
//  ProfessionalExperienceChipView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct ProfessionalExperienceChipView: View {
    // MARK: - Properties
    let professionalExperience: ProfessionalExperience
    let placeHolderImageName: String
    // MARK: - Body
    var body: some View {
        
        HStack {
            
            AsyncImage(url: professionalExperience.companyLogoURL) { phase in
                
                switch phase {
                    
                case .empty:
                    Image(systemName: placeHolderImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                    
                case .failure:
                    Image(systemName: placeHolderImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                @unknown default:
                    fatalError("Unhandled async image phase")
                }
            }
            .frame(width: 100, height: 100)
            .padding(.leading)
            
            VStack(alignment: .leading) {
                
                Text("Company: ").font(.title3.bold()) + Text(professionalExperience.companyName)
                
                Text("Positon: ").font(.title3.bold()) + Text(professionalExperience.position)
                
                Text("Period: \(Text(professionalExperience.period).font(.body))")
                    .font(.title3.bold())
                
                Text("Location: \(Text(professionalExperience.location).font(.body))")
                    .font(.title3.bold())
                
            } //: VSTACK
            .padding()
            Spacer()
        } //: HSTACK        
    } //: BODY
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    ProfessionalExperienceChipView(professionalExperience: professionalExperiences[0], placeHolderImageName: "laptopcomputer.and.iphone")
}

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
    let placeHolderImageName: PlaceholderIcons
    
    // MARK: - Body
    var body: some View {
        
        HStack {
            
            AsyncImage(url: professionalExperience.companyLogoURL) { phase in
                
                switch phase {
                    
                case .empty:
                    Image(systemName: placeHolderImageName.rawValue)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                    
                case .failure:
                    Image(systemName: placeHolderImageName.rawValue)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                    
                @unknown default:
                    fatalError("Unhandled async image phase")
                }
            } //: ASYNC IMAGE
            .frame(width: 100, height: 100)
            .padding(.leading)
            
            VStack(alignment: .leading) {
                
                Text("Company: ").font(.title3.bold()) + Text(professionalExperience.companyName)
                
                Text("Positon: ").font(.title3.bold()) + Text(professionalExperience.position)
                
                Text("Period: ").font(.title3.bold()) + Text(professionalExperience.period)
                
                Text("Location: ").font(.title3.bold()) + Text(professionalExperience.location)
                
            } //: VSTACK
            .padding()
            
            Spacer()
        } //: HSTACK        
    } //: BODY
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    
    ProfessionalExperienceChipView(professionalExperience: ProfessionalExperience(id: "id",
                                                                                  companyName: "name",
                                                                                  position: "position",
                                                                                  from: "from",
                                                                                  to: "to",
                                                                                  location: "location",
                                                                                  description: "description", 
                                                                                  mainResponsabilities: ["resp"],
                                                                                  mainTechnologies: ["technology"],
                                                                                  companyDescription: "companyDescription",
                                                                                  companyWebsite: "website",
                                                                                  companyLogoURLString: "companyURL"),
                                   placeHolderImageName: .professionalExperience)
}

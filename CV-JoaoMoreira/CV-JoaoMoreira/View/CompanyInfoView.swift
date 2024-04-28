//
//  CompanyInfoView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 19/04/2024.
//

import SwiftUI

struct CompanyInfoView: View {
    
    // MARK: - Properties
    let professionalExperience: ProfessionalExperience
    let placeholderImageName: String
    
    // MARK: - Body
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("About \(professionalExperience.companyName):")
                .font(.title3).bold()
            Text(professionalExperience.companyDescription)
        } //: VSTACK
        .background(
            AsyncImage(url: professionalExperience.companyLogoURL) { phase in
                
                switch phase {
                    
                case .empty:
                    Image(systemName: placeholderImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                    
                case .failure:
                    Image(systemName: placeholderImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                    
                @unknown default:
                    fatalError("Unhandled async image phase")
                }
            } //: ASYNC IMAGE
                .opacity(0.2)
        )
        .padding()
    } //: BODY
}

#Preview {
    CompanyInfoView(professionalExperience: ProfessionalExperience(id: "id",
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
                    placeholderImageName: "laptopcomputer.and.iphone")
}

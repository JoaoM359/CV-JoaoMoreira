//
//  CompanyInfoView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 19/04/2024.
//

import SwiftUI

struct CompanyInfoView: View {
    
    let professionalExperience: ProfessionalExperience
    let placeholderImageName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("About \(professionalExperience.companyName):").font(.title3).bold()
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
            }.opacity(0.2)
        )
        .padding()
    } //: BODY
}

#Preview {
    CompanyInfoView(professionalExperience: professionalExperiences[0],
                    placeholderImageName: "laptopcomputer.and.iphone")
}

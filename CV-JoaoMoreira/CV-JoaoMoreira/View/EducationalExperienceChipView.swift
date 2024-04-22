//
//  EducationalExperienceChipView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct EducationalExperienceChipView: View {
    
    // MARK: - Properties
    let imageURL: String
    let placeHolderImageName: String
    let courseName: String
    let period: String
    
    // MARK: - Body
    var body: some View {
        
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: imageURL)) { phase in
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
            
            Text(courseName)
                .font(.title3).bold()
                .background(.white.opacity(0.6))
                
            
            Text(period)
                .font(.body)
                .background(.white.opacity(0.6))
                
        }.padding()
       
        
    }
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    EducationalExperienceChipView(imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Isep-logo.png/800px-Isep-logo.png",
                                  placeHolderImageName: "laptopcomputer.and.iphone", courseName: "Degree in Informatics Engineering", period: "2019-2020")
}

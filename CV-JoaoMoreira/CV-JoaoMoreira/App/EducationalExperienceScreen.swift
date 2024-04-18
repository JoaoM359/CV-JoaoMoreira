//
//  EducationalExperienceScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct EducationalExperienceScreen: View {
    
    // MARK: - Properties
    let imageURL: String
    
    let placeHolderImageName: String
    
    // MARK: - Body
    var body: some View {
        ScrollView {
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
            .padding()
            
            
            
        } //: SCROLL
    }
}

#Preview {
    EducationalExperienceScreen(imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Isep-logo.png/800px-Isep-logo.png",
                                placeHolderImageName: "laptopcomputer.and.iphone")
}

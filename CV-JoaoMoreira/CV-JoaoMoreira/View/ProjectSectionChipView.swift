//
//  ProjectSectionChipView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct ProjectSectionChipView: View {
    
    let project: Project
    let placeHolderImageName: String
    
    var body: some View {
        HStack {
            
            AsyncImage(url: project.institutionLogoURL) { phase in
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
            
            VStack (alignment: .leading) {
                
                Text(project.projectName)
                    .font(.title3).bold()
                Text("Period: \(Text(project.period).font(.body))")
                    .font(.title3.bold())
            }
            
            
            
            
            
        }.padding()
        Text("Description: \(Text(project.description).font(.body))")
            .font(.title3.bold())
            .padding()
            
    }
}

#Preview {
    ProjectSectionChipView(project: projects[0], placeHolderImageName: "book.pages")
}

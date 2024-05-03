//
//  ProjectSectionChipView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct ProjectSectionChipView: View {
    
    // MARK: - Properties
    let project: Project
    let placeHolderImageName: PlaceholderIcons
    
    // MARK: - Body
    var body: some View {

        HStack {
            
            AsyncImage(url: project.institutionLogoURL) { phase in
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
            
            VStack (alignment: .leading) {
                
                Text(project.projectName)
                    .font(.title3).bold()
                
                Text("Period: \(Text(project.period).font(.body))")
                    .font(.title3.bold())
            } //: VSTACK
        } //: HSTACK
        .padding()
        
        Text("Description: \(Text(project.description).font(.body))")
            .font(.title3.bold())
            .padding()
    } //: BODY
}

#Preview {
    
    ProjectSectionChipView(project: Project(id: "1", 
                                            projectName: "name",
                                            description: "desc",
                                            from: "from",
                                            to: "to",
                                            institutionLogoURLString: "institution"),
                           placeHolderImageName: .projects)
}

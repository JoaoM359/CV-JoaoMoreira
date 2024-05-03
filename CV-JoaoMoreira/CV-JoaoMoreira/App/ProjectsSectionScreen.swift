//
//  ProjectsSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct ProjectsSectionScreen: View {
    
    // MARK: - Properties
    let navigationTitle: NavigationTitles
    let placeholderImageName: PlaceholderIcons
    let projects: [Project]? = Bundle.main.decode(.projects)
    
    // MARK: - Body
    var body: some View {
        
        ScrollView {
            
            if let projects {
                
                ForEach(projects) { project in
                    
                    ProjectSectionChipView(project: project,
                                           placeHolderImageName: placeholderImageName)
                    
                    Divider()
                } //: LOOP
            }
        } //: SCROLL
        .navigationTitle(navigationTitle.rawValue)
    } //: BODY
}

#Preview {
    
    ProjectsSectionScreen(navigationTitle: .projects,
                          placeholderImageName: .projects)
}

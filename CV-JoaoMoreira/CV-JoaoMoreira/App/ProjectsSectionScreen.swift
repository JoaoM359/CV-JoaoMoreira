//
//  ProjectsSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct ProjectsSectionScreen: View {
    
    let placeholderImageName: String
    let projects: [Project]? = Bundle.main.decode("ProjectsData.json")
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
        .navigationTitle("Educational EXperiences")
    
    }
}

#Preview {
    ProjectsSectionScreen(placeholderImageName: "book.pages")
}

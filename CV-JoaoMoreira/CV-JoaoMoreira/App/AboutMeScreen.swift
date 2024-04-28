//
//  AboutMeScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 16/04/2024.
//

import SwiftUI

struct AboutMeScreen: View {
    
    // MARK: - Properties
    let title: String
    var aboutMeSections: [AboutMeSection]? = Bundle.main.decode("AboutMeData.json")
    
    // MARK: - Body
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                if let aboutMeSections {
                    
                    ForEach(aboutMeSections){ section in
                        
                        AboutMeSectionView(aboutMeSectionTitle: section.sectionTitle,
                                           aboutMeSectionBody: section.sectionBody,
                                           pointDirection: section.pointingDirection)
                    } //: LOOP
                }
            } //: VSTACK
            .navigationTitle(title)
            .padding()
        } //: SCROLL
        .scrollIndicators(.never)
    } //: BODY
}

#Preview {
    
    AboutMeScreen(title: "About Me")
}

//
//  AboutMeScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 16/04/2024.
//

import SwiftUI

struct AboutMeScreen: View {
    
    // MARK: - Properties
    let navigationTitle: NavigationTitles
    var aboutMeSections: [AboutMeSection]? = Bundle.main.decode(.aboutMe)
    
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
            .navigationTitle(navigationTitle.rawValue)
            .padding()
        } //: SCROLL
        .scrollIndicators(.never)
    } //: BODY
}

#Preview {
    
    AboutMeScreen(navigationTitle: .aboutMe)
}

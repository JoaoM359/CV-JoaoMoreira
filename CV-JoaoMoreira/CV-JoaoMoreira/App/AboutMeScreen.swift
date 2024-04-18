//
//  AboutMeScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 16/04/2024.
//

import SwiftUI

struct AboutMeScreen: View {
    
    let title: String
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                ForEach(aboutMeSections, id:\.self){ section in
                    
                    AboutMeSectionView(aboutMeSectionTitle: section.sectionTitle,
                                       aboutMeSectionBody: section.sectionBody,
                                       pointDirection: section.pointingDirection
                    )
                } //: LOOP
            } //: VSTACK
            .navigationTitle(title)
            .padding()
        } //: SCROLL
    } //: BODY
}

#Preview {
    AboutMeScreen(title: "About Me")
}

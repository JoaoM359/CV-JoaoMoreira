//
//  AboutMeSectionView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 16/04/2024.
//

import SwiftUI

struct AboutMeSectionView: View {
    
    // MARK: - Properties
    let aboutMeSectionTitle: String
    let aboutMeSectionBody: String
    var pointDirection: String
    
    // MARK: - Body
    var body: some View {
        
        // Hand Pointing Image
        let image = Image(systemName: "hand.point.\(pointDirection)")
            .resizable()
            .frame(maxWidth: 75, maxHeight: 50)
            .foregroundStyle(.baseBlue)
        
        // Text
        let textStack = VStack(alignment: .leading) {

            Text(aboutMeSectionTitle)
                .font(.title)
                .fontWeight(.bold)
            
            Text(aboutMeSectionBody)
                .multilineTextAlignment(.leading)
            
        } //: VSTACK
        
        HStack {
            if pointDirection == "right" {
                image
                textStack
            } else {
                textStack
                image
            }
        } //: HSTACK
        .padding()
    } //: BODY
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    AboutMeSectionView(aboutMeSectionTitle: "Where I am from?", 
                       aboutMeSectionBody: "I am from aaaaa",
                       pointDirection: "right")
}

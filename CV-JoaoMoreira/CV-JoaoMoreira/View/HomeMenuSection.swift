//
//  AboutSection.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct HomeMenuSection: View {
    
    // MARK: - Properties
    let title: String
    let iconName: String
    
    // MARK: - Body
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .overlay(
                HStack {
                    Image(systemName: iconName)
                        .foregroundColor(Color(red: 0.16,
                                               green: 0.50,
                                               blue: 0.73,
                                               opacity: 0.7)) // Phone icon
                    Text(title)
                        .font(.title2)// Phone number
                } //: HSTACK
            )
            .frame(height: 50)
            .padding(.horizontal)
    } //: BODY
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    HomeMenuSection(title: "Hello", 
                    iconName: "phone.fill")
}


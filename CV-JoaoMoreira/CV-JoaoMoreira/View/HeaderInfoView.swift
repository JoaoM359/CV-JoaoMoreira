//
//  HeaderInfoView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct HeaderInfoView: View {
    
    // MARK: - Properties
    let imageName: String
    let name: String
    let position: String
    
    // MARK: - Body
    var body: some View {
        
        // Photo
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 5)
            )
        
        // Name
        Text(name)
            .font(Font.custom("Pacifico-regular", size: 40))
            .bold()
            .foregroundColor(.white)
        
        //Position
        Text(position)
            .foregroundColor(.white)
            .font(.system(size: 25))
    }
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    
    HeaderInfoView(imageName: "joao",
                   name: "João Moreira",
                   position: "iOS Engineer")
}

//
//  MainTecnologiesChipView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 19/04/2024.
//

import SwiftUI

struct MainTecnologiesChipView: View {
    
    // MARK: - Properties
    let tecnologyName: String
    
    // MARK: - Body
    var body: some View {
        VStack {
            Image(tecnologyName.lowercased())
                .resizable()
            
                .scaledToFit()
            Text(tecnologyName)
                .font(.body).bold()
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    MainTecnologiesChipView(tecnologyName: "Swift")
}

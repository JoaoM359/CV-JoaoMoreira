//
//  ContactInfoView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct ContactInfoView: View {

    let contact: String
    let imageName: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.16, green: 0.50, blue: 0.73, opacity: 0.7))// Phone icon
                    Text(contact) // Phone number
                }
            )
            .padding(.all)
    }
}
// MARK: - Preview
@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    ContactInfoView(contact: "Hello", imageName: "phone.fill")
}


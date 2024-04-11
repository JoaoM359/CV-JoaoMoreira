//
//  ContentView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background color
            Color(red: 0.16, green: 0.50, blue: 0.73, opacity: 0.7)
                .edgesIgnoringSafeArea(.all)

            //Centered Text
            VStack {
                //Photo
                Image("joao")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                // Name
                Text("João Moreira")
                    .font(Font.custom("Pacifico-regular", size: 40))
                    .bold()
                    .foregroundColor(.white)

                //Job
                Text("iOS Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))

                //Divider()

                //Contact information
                ContactInfoView(contact: "+351 916 930 348", imageName: "phone.fill")
                ContactInfoView(contact: "359.joao@gmail.com", imageName: "envelope.fill")


            }
        }
    }
}

#Preview {
    ContentView()
}

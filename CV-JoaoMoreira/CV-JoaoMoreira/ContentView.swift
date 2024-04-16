//
//  ContentView.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                
                // Header Info
                HeaderInfoView(imageName: "joao",
                               name: "João Moreira",
                               position: "iOS Engineer")
                
                //Sections
                NavigationLink {
                    AboutSection(title: "",
                                 iconName: "")
                } label: {
                    AboutSection(title: "AboutMe",
                                 iconName: "phone.fill")
                    .foregroundStyle(.black)
                }
                
                NavigationLink {
                    AboutSection(title: "",
                                 iconName:  "")
                } label: {
                    AboutSection(title: "Professional Experience",
                                 iconName:  "phone.fill")
                    .foregroundStyle(.black)
                }
                
                NavigationLink {
                    AboutSection(title: "",
                                 iconName: "")
                } label: {
                    AboutSection(title: "Educational Experience",
                                 iconName: "phone.fill")
                    .foregroundStyle(.black)
                }
                
                NavigationLink {
                    AboutSection(title: "",
                                 iconName: "")
                } label: {
                    AboutSection(title: "Projects",
                                 iconName: "phone.fill")
                    .foregroundStyle(.black)
                }
                NavigationLink {
                    AboutSection(title: "",
                                 iconName: "")
                } label: {
                    AboutSection(title: "Languages",
                                 iconName: "phone.fill")
                    .foregroundStyle(.black)
                }
                
                NavigationLink {
                    AboutSection(title: "",
                                 iconName: "")
                } label: {
                    AboutSection(title: "Interests and Hobbies",
                                 iconName: "phone.fill")
                    .foregroundStyle(.black)
                }
                                
                Spacer()
            } //: VSTACK
            .background(
                Color(red: 0.16, green: 0.50, blue: 0.73, opacity: 0.7)
                    .ignoresSafeArea()
            )
        }
        
    } //: BODY
}

#Preview {
    ContentView()
}

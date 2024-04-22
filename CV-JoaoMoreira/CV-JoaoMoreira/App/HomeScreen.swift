//
//  HomeScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    Spacer()
                    
                    // Header Info
                    HeaderInfoView(imageName: "joao",
                                   name: "João Moreira",
                                   position: "iOS Engineer")
                    
                    //Sections
                    NavigationLink {
                        
                        AboutMeScreen(title: "About Me")
                    } label: {
                        
                        AboutSection(title: "About Me",
                                     iconName: "info.circle")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {

                        ProfessionalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
                    } label: {
                        AboutSection(title: "Professional Experience",
                                     iconName:  "laptopcomputer.and.iphone")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        EducationalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
                    } label: {
                        AboutSection(title: "Educational Experience",
                                     iconName: "graduationcap")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        AboutSection(title: "",
                                     iconName: "")
                    } label: {
                        AboutSection(title: "Projects",
                                     iconName: "book.pages")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        AboutSection(title: "",
                                     iconName: "")
                    } label: {
                        AboutSection(title: "Languages",
                                     iconName: "speaker.wave.2.bubble")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        AboutSection(title: "",
                                     iconName: "")
                    } label: {
                        AboutSection(title: "Interests and Hobbies",
                                     iconName: "sportscourt")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        AboutSection(title: "",
                                     iconName: "")
                    } label: {
                        AboutSection(title: "Contacts",
                                     iconName: "phone")
                        .foregroundStyle(.black)
                    }
                    
                    Spacer()
                } //: VSTACK
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("My Digital CV")
                
                
            } //: SCROLL
            .scrollIndicators(.never)
            .background(
                Color.baseBlue
                    .ignoresSafeArea()
            )
        } //: NAV STACK
    } //: BODY
}

#Preview {
    HomeScreen()
}

//
//  HomeScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 11/04/2024.
//

import SwiftUI

struct HomeScreen: View {
    
    // MARK: - Body
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
                        
                        HomeMenuSection(title: "About Me",
                                        iconName: "info.circle")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        ProfessionalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
                    } label: {
                        
                        HomeMenuSection(title: "Professional Experience",
                                        iconName:  "laptopcomputer.and.iphone")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        EducationalExperienceScreen(placeHolderImageName: "laptopcomputer.and.iphone")
                    } label: {
                        
                        HomeMenuSection(title: "Educational Experience",
                                        iconName: "graduationcap")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        ProjectsSectionScreen(placeholderImageName: "book.pages")
                    } label: {
                        
                        HomeMenuSection(title: "Projects",
                                        iconName: "book.pages")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        LanguagesSectionScreen()
                    } label: {
                        
                        HomeMenuSection(title: "Languages",
                                        iconName: "speaker.wave.2.bubble")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        HobbiesAndInterestsSectionScreen()
                    } label: {
                        
                        HomeMenuSection(title: "Interests and Hobbies",
                                        iconName: "sportscourt")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        ContactsSectionScreen()
                    } label: {
                        
                        HomeMenuSection(title: "Contacts",
                                        iconName: "phone")
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        CVDocumentScreen()
                    } label: {
                        
                        HomeMenuSection(title: "CV Document",
                                        iconName: "doc")
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

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
                        
                        AboutMeScreen(navigationTitle: .aboutMe)
                    } label: {
                        
                        HomeMenuSection(title: .aboutMe,
                                        iconName: .aboutMe)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        ProfessionalExperienceScreen(navigationTitle: .professionalExperience,
                                                     placeHolderImageName: .professionalExperience)
                    } label: {
                        
                        HomeMenuSection(title: .professionalExperience,
                                        iconName:  .professionalExperience)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        EducationalExperienceScreen(navigationTitle: .educationalExperience,
                                                    placeHolderImageName: .educationalExperience)
                    } label: {
                        
                        HomeMenuSection(title: .educationalExperience,
                                        iconName: .educationalExperience)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        ProjectsSectionScreen(navigationTitle: .projects,
                                              placeholderImageName: .projects)
                    } label: {
                        
                        HomeMenuSection(title: .projects,
                                        iconName: .projects)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        LanguagesSectionScreen(navigationTitle: .languages)
                    } label: {
                        
                        HomeMenuSection(title: .languages,
                                        iconName: .languages)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        HobbiesAndInterestsSectionScreen(navigationTitle: .hobbiesAndInterests)
                    } label: {
                        
                        HomeMenuSection(title: .hobbiesAndInterests,
                                        iconName: .hobbiesAndInterests)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        ContactsSectionScreen(navigationTitle: .contacts)
                    } label: {
                        
                        HomeMenuSection(title: .contacts,
                                        iconName: .contacts)
                        .foregroundStyle(.black)
                    }
                    
                    NavigationLink {
                        
                        CVDocumentScreen()
                    } label: {
                        
                        HomeMenuSection(title: .cvDocuemnt,
                                        iconName: .cvDocument)
                        .foregroundStyle(.black)
                    }
                    
                    Spacer()
                } //: VSTACK
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle(NavigationTitles.homeScreen.rawValue)
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

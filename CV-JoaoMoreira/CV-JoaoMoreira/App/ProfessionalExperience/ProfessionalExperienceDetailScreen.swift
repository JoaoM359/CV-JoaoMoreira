//
//  ProfessionalExperienceDetailScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 18/04/2024.
//

import SwiftUI

struct ProfessionalExperienceDetailScreen: View {
    
    // MARK: - Properties
    let professionalExperience: ProfessionalExperience
    let placeholderImageName: PlaceholderIcons
    
    @State private var isCompanyInfoPresented = false
    
    // MARK: - Body
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                ProfessionalExperienceChipView(professionalExperience: professionalExperience,
                                               placeHolderImageName: placeholderImageName)
                .background(.baseBlue).clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(alignment: .topLeading) {
                    
                    Button {
                        isCompanyInfoPresented.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                    } //: BUTTON
                    .foregroundStyle(.black)
                    .sheet(isPresented: $isCompanyInfoPresented,
                           content: {
                        CompanyInfoView(professionalExperience: professionalExperience,
                                        placeholderImageName: placeholderImageName)
                    })
                    .padding()
                } //: OVERLAY
                
                Divider()
                
                Text("Desription: \(Text(professionalExperience.description).font(.body))")
                    .font(.title3.bold())
                
                Text("\nMain Reponsabilities:")
                    .font(.title3.bold())
                
                ForEach(professionalExperience.mainResponsabilities, id: \.self) { responsability in
                    Text("- \(responsability)")
                }
                
                Text("\nMain Technologies:").font(.title3.bold())
                
                LazyVGrid(columns: [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())],
                          spacing: 10) {
                    
                    ForEach(professionalExperience.mainTechnologies, id: \.self) { technology in
                        
                        MainTecnologiesChipView(tecnologyName: technology)
                            .frame(width: 100,height: 100)
                    } //: LOOP
                } //: VGRID
                          .padding()
            } //: VSTACK
            .padding()
        } //: SCROLL
        .navigationTitle(professionalExperience.companyName)
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.never)
    } //: BODY
}

#Preview {
    
    ProfessionalExperienceDetailScreen(professionalExperience: ProfessionalExperience(id: "id", 
                                                                                      companyName: "name",
                                                                                      position: "position",
                                                                                      from: "from",
                                                                                      to: "to",
                                                                                      location: "location",
                                                                                      description: "description",
                                                                                      mainResponsabilities: ["resp"],
                                                                                      mainTechnologies: ["technology"], 
                                                                                      companyDescription: "companyDescription",
                                                                                      companyWebsite: "website",
                                                                                      companyLogoURLString: "companyURL"),
                                       placeholderImageName: .professionalExperience)
}

//
//  LanguagesSectionScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 22/04/2024.
//

import SwiftUI

struct LanguagesSectionScreen: View {
    
    // MARK: - Properties
    let navigationTitle: NavigationTitles
    
    private let languages: [Language]? = Bundle.main.decode(.languages)
    
    // MARK: - Body
    var body: some View {
        
        ScrollView {
            
            if let languages {
                
                ForEach(languages) { language in
                    
                    HStack{
                        
                        VStack {
                            
                            Image(language.languageName.lowercased())
                                .resizable().scaledToFit()
                                .frame(width: 100)
                            
                            Text(language.languageName)
                        } //: VSTACK
                        
                        VStack(alignment: .leading) {
                            
                            Text("Listening: \(language.listeningLevel)")
                            
                            Text("Reading: \(language.readingLevel)")
                            
                            Text("Spoken production: \(language.spokenProduction)")
                            
                            Text("Spoken interaction: \(language.spokenInteraction)")
                            
                            Text("Writing: \(language.writing)")
                            
                        } //: VSTACK
                        
                        Spacer()
                    } //: HSTACK
                    .padding()
                } //: LOOP
            }
        } //: SCROLL
        .navigationTitle(navigationTitle.rawValue)
    } //: BODY
}

#Preview {
    
    LanguagesSectionScreen(navigationTitle: .languages)
}

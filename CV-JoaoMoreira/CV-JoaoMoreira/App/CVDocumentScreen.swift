//
//  CVDocumentScreen.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 26/04/2024.
//

import SwiftUI
import PDFKit

struct CVDocumentScreen: View {
    
    private var pdfDoc = PDFDocument()
    
    init() {
        
        if let url = Bundle.main.url(forResource: "cv", 
                                     withExtension: "pdf"),
           let pdfDocument = PDFDocument(url: url) {
            
            pdfDoc = pdfDocument
            
        }
    }
    
    var body: some View {
        
        PDFViewWrapper(showing: pdfDoc)
            .navigationTitle("CV Document")
        
    }
}

#Preview {
    CVDocumentScreen()
}


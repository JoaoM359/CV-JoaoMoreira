//
//  PDFViewWrapper.swift
//  CV-JoaoMoreira
//
//  Created by João Moreira on 26/04/2024.
//

import Foundation
import SwiftUI
import PDFKit

struct PDFViewWrapper: UIViewRepresentable {
    let pdfDocument: PDFDocument
    
    init(showing pdfDoc: PDFDocument) {
        self.pdfDocument = pdfDoc
    }
    
    //you could also have inits that take a URL or Data
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
}

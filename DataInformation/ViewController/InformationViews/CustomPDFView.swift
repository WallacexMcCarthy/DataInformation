//
//  PDFKitView.swift
//  DataInformation
//
//  Created by Mccarthy, Wallace on 10/13/22.
//

import SwiftUI

import PDFKit

struct CustomPDFView: View
{
    let documentURL : URL
    var body: some View
    {
        PDFKitRepresentedView(documentURL: documentURL)
    }
}
struct PDFKitRepresentedView : UIViewRepresentable
{
    let documentURL : URL
    
    init (documentURL : URL)
    {
        self.documentURL = documentURL
    }
    
    func makeUIView(context: Context) -> some UIView
    {
        let pdfView : PDFView =  PDFView()
        
        pdfView.document = PDFDocument(url: self.documentURL)
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        pdfView.minScaleFactor = 0.7
        pdfView.maxScaleFactor = 5.0
        
        return pdfView
    }
    
    func updateUIView(_ uiView : UIViewType, context : Context) -> Void
    {
        // Do not put any code in here
    }
}

struct CustomPDFView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPDFView(documentURL: randomInfoURL)
    }
}

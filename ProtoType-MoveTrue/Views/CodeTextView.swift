//
//  CodeTextView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {

    @EnvironmentObject var model: ContentModel
 
    
    func makeUIView(context: Context) -> UITextView {
        
        let textView = UITextView()
        textView.isEditable = false
        textView.backgroundColor = .clear
        return textView
    }
    
    func updateUIView(_ textView: UIViewType, context: Context) {
        
        // Set the attributed text for the lesson
        textView.attributedText = model.codeText
        //Scroll back to the top
        textView.scrollRectToVisible(CGRect(x:0, y: 0, width: 1, height: 1), animated: false)
        
    }
    
}

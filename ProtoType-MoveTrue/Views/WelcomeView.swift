//
//  WelcomeView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI



struct WelcomeView: View {
    
    @EnvironmentObject var model: ContentModel
    var TopImage: String
    
    var body: some View {
        
        ZStack {
            
            MoveTrueBackground()
            
            VStack{
                
                MoveTrue_TopImage(TopImage: TopImage)
                
                CodeTextView(index: 0)
                    .padding(.bottom, 110)
                
                

            } // VStack Close
            .ignoresSafeArea()
        }
    }
}


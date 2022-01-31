//
//  WelcomeView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI



struct WelcomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ZStack {
            
            MoveTrueBackground()
            
            VStack{
                
                Image("AboutImage_2")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .cornerRadius(5)
                    .border(.black)
                
                CodeTextView()
                    .padding(.bottom, 110)
                
                

            } // VStack Close
            .ignoresSafeArea()
        }
    }
}


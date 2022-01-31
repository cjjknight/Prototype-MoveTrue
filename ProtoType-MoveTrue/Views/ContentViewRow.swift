//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by user210522 on 1/26/22.
//

import SwiftUI

struct ContentViewRow: View {
  
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    
    
    var body: some View {
 
        
        // Content Card
        ZStack (alignment: .leading) {
            
        
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack ( spacing: 30) {
                
                Text(String(index+1))
                    .bold()
                
                VStack (alignment: .leading){
                    Text(model.modules[index].title)
                        .bold()
                    Text(model.modules[index].length)
                } // VStack Close
            } // HStack Close
            .padding()
        } // ZStack Close
        .padding(.bottom, 5)
        
        
        
        
        
        
        
        
    }
}


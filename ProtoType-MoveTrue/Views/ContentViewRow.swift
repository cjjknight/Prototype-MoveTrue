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
    var contentCategory: String
    
    
    var body: some View {
 
        
        // Content Card
        ZStack (alignment: .leading) {
            
        
            if contentCategory == "Seminar" {RectangleCard(color: .white, sizeHeight: 88)}
            else {RectangleCard(color: .gray, sizeHeight: 48)}
            
            HStack ( spacing: 30) {
                
                Text(String(index+1))
                    .bold()
                
                VStack (alignment: .leading){
                    Text(model.modules[index].title)
                        .bold()
                    Text(model.modules[index].length)
                    if contentCategory == "Seminar" {
                        Text("Description: " + model.modules[index].description)
                    }
               
                } // VStack Close
            } // HStack Close
            .padding()
        } // ZStack Close
        .padding(.bottom, 5)
        
        
        
        
        
        
        
        
    }
}


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
   
    
    let currentDateTime = Date()
    
    var body: some View {
        
        // Content Card
        ZStack (alignment: .leading) {
            
        
            if contentCategory == "Seminar" {RectangleCard(color: .green, sizeHeight: 88)}
            else  if contentCategory == "Calendar" {RectangleCard(color: .white, sizeHeight: 88)}
            else {RectangleCard(color: .blue, sizeHeight: 48)}
            
            HStack ( spacing: 30) {
                
                Text(String(index+1))
                    .bold()
                
                VStack (alignment: .leading){
                    if contentCategory == "Calendar" {Text(model.modules[index].category + ": " + (model.modules[index].title)).bold()}
                    else {Text(model.modules[index].title).bold()}
                    Text(model.modules[index].length)
                    if model.modules[index].category == "Seminar" {
                        Text("Description: " + model.modules[index].description)}
                    if contentCategory == "Calendar" {
                        HStack {
                            Text(Rational.converterDateTime(model, index), style: .date)
                            Text(" at ")
                            Text(Rational.converterDateTime(model, index), style: .time)
                            Text(model.modules[index].timezone)
                        }
                        }
                        
                    
               
                } // VStack Close
            } // HStack Close
            .padding()
        } // ZStack Close
        .padding(.bottom, 5)
        
        
        
        
        
        
        
        
    }
}


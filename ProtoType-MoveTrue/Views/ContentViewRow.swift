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
    var localTimeZoneAbbreviation: String { return TimeZone.current.abbreviation() ?? "" }
    
    var body: some View {
        
        // Content Card
        ZStack (alignment: .leading) {
            
        
            if contentCategory == "Seminar" {RectangleCard(color: .green, sizeHeight: 88)}
            else  if contentCategory == "Calendar" {RectangleCard(color: .white, sizeHeight: 88)}
            else {RectangleCard(color: .blue, sizeHeight: 48)}
            
            HStack ( spacing: 30) {
                
                
                // Put Image appropriate to Lesson Category
                if model.modules[index].category == "Seminar" {Image(systemName: "list.bullet")}
                if model.modules[index].category == "FullBody" {Image(systemName: "figure.walk")}
                if model.modules[index].category == "Flexibility" {Image(systemName: "figure.wave")}
                
                
                VStack (alignment: .leading){
                    if contentCategory == "Calendar" && model.modules[index].category != "Seminar" {Text(model.modules[index].category + ": " + (model.modules[index].title)).bold()}
                    else {Text(model.modules[index].title).bold()}
                    Text(model.modules[index].length)
             
                    if contentCategory == "Calendar" {
                        HStack {
                            Text(Rational.converterDateTime(model, index), style: .date)
                            Text("at")
                            Text(Rational.converterDateTime(model, index), style: .time)
                            Text(String(localTimeZoneAbbreviation))
                        }
                        }
                        
                                 
                                 
                } // VStack Close
            } // HStack Close
            .padding()
        } // ZStack Close
        .padding(.bottom, 5)
        
        
        
        
        
        
        
        
    }
}


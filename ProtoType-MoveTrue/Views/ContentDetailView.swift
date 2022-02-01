//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by user210522 on 1/26/22.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var index: Int
    var contentCategory: String
    let currentDateTime = Date()
    var localTimeZoneAbbreviation: String { return TimeZone.current.abbreviation() ?? "" }
    
    var body: some View {
        
        
        let url = URL(string: Constants.videoHostUrl + (model.modules[index].video ?? ""))
        let currentUser = Constants.currentUser
        
        ZStack{
            
            MoveTrueBackground()
            
            VStack{
                
                VStack (alignment: .center){
                    Text("") // Spacer Row
                    Text("") // Spacer Row

                if contentCategory != "Calendar" {
                    
                    // Determine whether the user has access
                    
                    if Rational.doesUserHaveAccess(model, index, Constants.currentUser){
                       
                        
                                    // Only show video if we got a valid URL and we're not coming from CalendarView
                                    if url != nil {
                                        VideoPlayer(player: AVPlayer(url: url!))
                                            .cornerRadius(10)
                                    }
                    }
                    else {
                        LockedContentView()
                    }
                }
                else {
                    
                        Text(model.modules[index].length)
                        HStack {
                            Text(Rational.converterDateTime(model, index), style: .date)
                            Text("at")
                            Text(Rational.converterDateTime(model, index), style: .time)
                            Text(localTimeZoneAbbreviation)
                        } // HStack Close
                    } // Else Close
                } // Vstack Close
                // Description
                CodeTextView(index: index)
            } // Close VStack
            .ignoresSafeArea()
        }//Close ZStack
    } // Close View
} //Close ContentDetailView


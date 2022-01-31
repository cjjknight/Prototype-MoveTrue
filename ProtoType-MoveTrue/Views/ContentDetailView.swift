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
    var body: some View {
        
       
        let url = URL(string: Constants.videoHostUrl + (model.modules[index].video ?? ""))
       
        
        VStack{
            // Only show video if we got a valid URL
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
            // Description
            CodeTextView()
          
            
            
            
        } // Close VStack
        .padding()
       // .navigationBarTitle(lesson?.title ?? "")
    } // Close View
} //Close ContentDetailView


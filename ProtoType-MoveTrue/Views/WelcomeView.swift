//
//  WelcomeView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI



    struct WelcomeView: View {
        
        @EnvironmentObject var formattedText: ContentModel
    
        var body: some View {
            
            HStack{
                
                Image("AboutImage_1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 900)
                    .clipped()
                    .cornerRadius(5)
                
                 CodeTextView()
            }
        }
    }

    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }

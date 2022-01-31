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
                
                Image("MoveTrueBackground")
                     .resizable()
                     .ignoresSafeArea()
           
                VStack{
                    
                    
                    Image("MoveTrueLogo")
            

                    Spacer()
                 
                            
                        VStack{
                            
                            Image("AboutImage_2")
                                .resizable()
                                .scaledToFit()
                                .clipped()
                                .cornerRadius(5)
                            
                            CodeTextView()
                            //Text("About Text Here")
                        }
                    
                    Spacer()
                } // VStack Close
            }
        }
    }

    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }

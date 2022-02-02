//
//  SeminarTabView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/29/22.
//

import SwiftUI

struct ContentListView: View {
    
    @EnvironmentObject var model: ContentModel

    var contentCategory:String
    let currentDateTime = Date()
    var TopImage:String
    var currentUser:Int
    
    var body: some View {
        
        ZStack {
            
            MoveTrueBackground()
        
            
            VStack{
                
                MoveTrue_TopImage(TopImage: TopImage)
             
                ScrollView {
                    
                    LazyVStack {
                        
                        // Confimm that currentModule is set
                        if model.modules.count != nil {
                        
                            ForEach(0..<model.modules.count) { index in
                                
                            
                                    // Seminar, Lesson and Flexibility List
                                    if model.modules[index].category == contentCategory &&
                                        currentDateTime > Rational.converterDateTime(model, index)
                                    {
                                        
                                        NavigationLink(
                                            destination:
                                                ContentDetailView(index: index, contentCategory: contentCategory, currentUser: currentUser)
                                            ,
                                            label: {
                                        ContentViewRow(index: index, contentCategory: contentCategory)
                                            })
                                    }
                                
                                // Calendar List
                                if contentCategory == "Calendar" &&
                                    currentDateTime < Rational.converterDateTime(model, index) &&
                                    model.modules[index].category != "Admin"
                                {
                                    
                                    NavigationLink(
                                        destination:
                                                ContentDetailView(index: index, contentCategory: contentCategory, currentUser: currentUser)
                                        ,
                                        label: {
                                    ContentViewRow(index: index, contentCategory: contentCategory)
                                        })
                                }
                            }//ForEach Close

                        } // Close If statement about currentModule exisiting
                    } //Lazy VStack Close
                    .accentColor(.black)
                    //.navigationBarTitle("Learn \(model.currentModule?.category ?? "")")
                    
                } //ScrollView Close
                .zIndex(1)            
                Spacer()
            } // VStack Close
            .ignoresSafeArea()
            
        }
    }

}

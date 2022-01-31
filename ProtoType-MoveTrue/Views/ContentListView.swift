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
    
    var body: some View {
        
        ZStack {
            
           Image("MoveTrueBackground")
                .resizable()
               .ignoresSafeArea()
        
            
            VStack{
                
                
                Image("MoveTrueLogo")
        

                Spacer()
             
                ScrollView {
                    
                    LazyVStack {
                        
                        // Confimm that currentModule is set
                        if model.modules.count != nil {
                        
                            ForEach(0..<model.modules.count) { index in
                                
                                if model.modules[index].category == contentCategory {
                                    
                                    if model.modules[index].category == contentCategory {
                                        
                                        NavigationLink(
                                            destination:
                                                ContentDetailView(index: index)
                                            ,
                                            label: {
                                        ContentViewRow(index: index, contentCategory: contentCategory)
                                            })
                                    }
                                }
                            }//ForEach Close
                        } // Close If statement about currentModule exisiting
                    } //Lazy VStack Close
                    .padding()
                    .accentColor(.black)
                    //.navigationBarTitle("Learn \(model.currentModule?.category ?? "")")
                    
                } //ScrollView Close
                .zIndex(1)
                
                
                
                
                Spacer()
            } // VStack Close
        }
    }

}

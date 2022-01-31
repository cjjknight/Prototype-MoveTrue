//
//  SeminarTabView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/29/22.
//

import SwiftUI

struct SeminarTabView: View {
    
    @EnvironmentObject var model: ContentModel

    var body: some View {
        
        ZStack {
            
           // Image("MoveTrueBackground")
            //    .resizable()
            //    .ignoresSafeArea()
             //   .scaledToFill()
            
            VStack{
                
                
                Image("MoveTrueLogo")
        

                Spacer()
             
                ScrollView {
                    
                    LazyVStack {
                        
                        // Confimm that currentModule is set
                        if model.modules.count != nil {
                        
                            ForEach(0..<model.modules.count) { index in
                                
                               // NavigationLink(
                                 //   destination:
                                       // ContentDetailView()
                                        //.onAppear(perform: {
                                       //     model.beginLesson(index)
                                   
                                 //   ),
                                //    label: {
                                        ContentViewRow(index: index)
                               //     })
                                
                                
                                
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

struct SeminarTabView_Previews: PreviewProvider {
    static var previews: some View {
        SeminarTabView()
    }
}

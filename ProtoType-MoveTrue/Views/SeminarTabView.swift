//
//  SeminarTabView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/29/22.
//

import SwiftUI

struct SeminarTabView: View {
    
    @EnvironmentObject var formattedText: ContentModel

    var body: some View {
        
        ZStack {
            
            Image("MoveTrueBackground")
                 .resizable()
                 .ignoresSafeArea()
                 .scaledToFill()
            
            VStack{
                
                
                Image("MoveTrueLogo")
        

                Spacer()
             
                        
                    HStack{
                        
                        Image("AboutImage_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, alignment: .leading)
                            .clipped()
                            .cornerRadius(5)
                        
                         //CodeTextView()
                        Text("About Text Here")
                    }
                
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

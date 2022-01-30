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

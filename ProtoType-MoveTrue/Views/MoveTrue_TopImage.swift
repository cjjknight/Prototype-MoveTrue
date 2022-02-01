//
//  TopImage.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/31/22.
//


import SwiftUI

struct MoveTrue_TopImage: View {
    
    var TopImage:String
    var body: some View {
        
        Image(TopImage)
            .resizable()
            .scaledToFit()
            .clipped()
            .cornerRadius(5)
            .border(.black)
    }
}

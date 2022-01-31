//
//  RectangleCard.swift
//  LearningApp
//
//  Created by user210522 on 1/27/22.
//

import SwiftUI

struct RectangleCard: View {
    
    var color:Color
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(color)
            .frame(height: 48)
            .cornerRadius(10)
            .shadow(radius:5)
        
    }
}


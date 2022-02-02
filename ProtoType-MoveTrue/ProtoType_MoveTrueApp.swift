//
//  ProtoType_MoveTrueApp.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI

@main
struct ProtoType_MoveTrueApp: App {
    var body: some Scene {
        WindowGroup {
            
            
            
            TabHomeView(currentUser: 0)
                .environmentObject(ContentModel())
        }
    }
}

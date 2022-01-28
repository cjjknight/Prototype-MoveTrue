//
//  ContentView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI

struct TabHomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        TabView {
            WelcomeView()
                .tabItem {
                    Text("Home")
                }
            Text("The Seminar Page")
                .tabItem {
                    Text("Seminars")
                }
            Text("The Fullbody Page")
                .tabItem {
                    Text("Fullbody")
                }
            Text("The Flexibility Page")
                .tabItem {
                    Text("Flexibility")
                }
            Text("The Calendar of Events")
                .tabItem {
                    Text("Calendar")
                }
        }
    }
}

struct TabHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeView()
    }
}
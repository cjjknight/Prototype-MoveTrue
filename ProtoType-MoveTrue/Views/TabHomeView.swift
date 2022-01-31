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
        
        ZStack{
            
        

            
            
            TabView {
                WelcomeView()
                    .tabItem {
                        VStack {
                            Image(systemName: "star")
                            Text("Welcome")
                        }
                    }
                SeminarTabView()
                    .tabItem {
                        VStack{
                            Image(systemName: "list.bullet")
                            Text("Seminars")
                        }
                    }
                Text("The Fullbody Page")
                    .tabItem {
                        VStack{
                            Image(systemName: "figure.walk")
                            Text("Fullbody")
                        }
                    }
                Text("The Flexibility Page")
                    .tabItem {
                        VStack {
                            Image(systemName: "figure.wave")
                            Text("Flexibility")
                        }
                    }
                Text("The Calendar of Events")
                    .tabItem {
                        VStack{
                            Image(systemName: "calendar")
                            Text("Calendar")
                        }
                    }
                    
            }.environmentObject(ContentModel())
        }
    }
}

struct TabHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeView()
    }
}

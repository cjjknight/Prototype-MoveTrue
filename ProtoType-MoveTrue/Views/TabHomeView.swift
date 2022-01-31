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
            MoveTrueBackground()
            
            VStack{
                
                Image("MoveTrueLogo")
                
                ZStack{
                    NavigationView{
                        TabView {
                            WelcomeView()
                                .tabItem {
                                    VStack {
                                        Image(systemName: "star")
                                        Text("Welcome")
                                    }
                                }
                            ContentListView(contentCategory: "Seminar")
                                .tabItem {
                                    VStack{
                                        Image(systemName: "list.bullet")
                                        Text("Seminars")
                                    }
                                }
                            ContentListView(contentCategory: "FullBody")
                                .tabItem {
                                    VStack{
                                        Image(systemName: "figure.walk")
                                        Text("Fullbody")
                                    }
                                }
                            ContentListView(contentCategory: "Flexibility")
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
                        
                    } //NavigationView Close
                    .navigationViewStyle(.stack)
                }
            }
        }
    }
}

struct TabHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeView()
    }
}

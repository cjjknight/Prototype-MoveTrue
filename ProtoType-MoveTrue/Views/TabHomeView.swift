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
                            WelcomeView(TopImage: "AboutImage_2")
                                .tabItem {
                                    VStack {
                                        Image(systemName: "star")
                                        Text("Welcome")
                                    }
                                }
                            ContentListView(contentCategory: "Seminar",TopImage: "AboutImage_2")
                                .tabItem {
                                    VStack{
                                        Image(systemName: "list.bullet")
                                        Text("Seminars")
                                    }
                                }
                            ContentListView(contentCategory: "FullBody",TopImage: "AboutImage_2")
                                .tabItem {
                                    VStack{
                                        Image(systemName: "figure.walk")
                                        Text("Fullbody")
                                    }
                                }
                            ContentListView(contentCategory: "Flexibility",TopImage: "AboutImage_2")
                                .tabItem {
                                    VStack {
                                        Image(systemName: "figure.wave")
                                        Text("Flexibility")
                                    }
                                }
                            ContentListView(contentCategory: "Calendar",TopImage: "AboutImage_2")
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

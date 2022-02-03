//
//  ContentView.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/28/22.
//

import SwiftUI

struct TabHomeView: View {
    
    @EnvironmentObject var model: ContentModel

    @State var currentUser = 99999
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            MoveTrueBackground()
            
            VStack{
                
                Image("MoveTrue_Logo")
                
               
                if currentUser == 99999 {
                            TextField("Username", text: $username)
                                .padding()
                                .background(.white)
                                .cornerRadius(5.0)
                                .padding(.bottom, 20)
                            SecureField("Password", text: $password)
                                .padding()
                                .background(.white)
                                .cornerRadius(5.0)
                                .padding(.bottom, 20)
                    
                                
                                Button(action: {
                                    currentUser = Rational.isUserInSystem(model,username,password)

                                }) {
                                    Text("LOGIN")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 220, height: 60)
                                        .background(Color.green)
                                        .cornerRadius(15.0)
                                }
                    
                    
                }
                else {
                
                ZStack{
                    NavigationView{
                        TabView {
                            WelcomeView(TopImage: "MoveTrue_Welcome_1")
                                .tabItem {
                                    VStack {
                                        Image(systemName: "star")
                                        Text("Welcome")
                                    }
                                }
                            ContentListView(contentCategory: "Seminar",TopImage: "MoveTrue_Seminar_1", currentUser: currentUser)
                                .tabItem {
                                    VStack{
                                        Image(systemName: "list.bullet")
                                        Text("Seminars")
                                    }
                                }
                            ContentListView(contentCategory: "FullBody",TopImage: "MoveTrue_FullBody_1", currentUser: currentUser)
                                .tabItem {
                                    VStack{
                                        Image(systemName: "figure.walk")
                                        Text("Fullbody")
                                    }
                                }
                            ContentListView(contentCategory: "Flexibility",TopImage: "MoveTrue_Flexibility_1", currentUser: currentUser)
                                .tabItem {
                                    VStack {
                                        Image(systemName: "figure.wave")
                                        Text("Flexibility")
                                    }
                                }
                            ContentListView(contentCategory: "Calendar",TopImage: "MoveTrue_Calendar_1", currentUser: currentUser)
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
}


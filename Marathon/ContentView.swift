//
//  ContentView.swift
//  Marathon
//
//  Created by Ethan Ayre on 08/04/2024.
//

import SwiftUI


struct ContentView: View {
    
    @State var name = "Ethan"
    @State var daysLeft = 24

    var body: some View {
        

        Spacer()
        TabView {
                    // First Tab
                    VStack {
                        HStack {
                            Text("Marathon countdown")
                            Image(systemName: "map.fill")
                        }.font(.title).foregroundColor(.green)
                        
                Spacer(minLength: 40)
                        
                        VStack{
                                    Text("Nearly there \(name)! You have \(daysLeft) days unitl your big run!")
                        }
                        Spacer()
                        
                        NavigationStack{
                           
                            List{
                                NavigationLink ("Running plan") {
                                    Text("Run plan").navigationTitle("Destination")}
                            }
                            }
                    }
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    
                    // Second Tab
                    VStack {
                        Text("Content for Second Tab")
                    }
                    .tabItem {
                        Image(systemName: "map")
                        Text("Plan")
                    }
                    
                    // Third Tab
                    VStack {
                        Text("Content for Third Tab")
                    }
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }

        }
    }


#Preview {
    ContentView()
}

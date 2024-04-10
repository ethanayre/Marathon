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
                            Text("Nearly there \(name)! You have \(daysLeft) days unitl your big run!").multilineTextAlignment(.center)
                        }
                        Spacer()
                        
                   
                    }
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    
                    // Second Tab
            VStack {
                Text("PLAN PAGE").fontWeight(.bold)
                HStack{
                    Text("In progress")
                    Image(systemName: "exclamationmark.triangle")
                }
            }
                    .tabItem {
                        Image(systemName: "map")
                        Text("Plan")
                    }
                    
                    // Settings Tab
                   
            VStack{
                Text("Settings")
                NavigationStack{
                    
                    List{
                        NavigationLink ("Account settings") {
                            HStack{
                            }
                            .navigationTitle("Account settings")}
                        NavigationLink ("Account settings") {
                            HStack{
                            }
                            .navigationTitle("Account settings")}
                    }
                }
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

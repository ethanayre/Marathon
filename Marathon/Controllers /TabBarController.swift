//
//  TabBarController.swift
//  Marathon
//
//  Created by Ethan Ayre on 12/04/2024.
//

import SwiftUI

struct TabBarController: View {
    var body: some View {
        TabView {
            // Tab 1: Home
            NavigationView {
                HomeViewController().navigationBarTitle("Home")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            // Tab 2: Favorites
            NavigationView {
                PlanViewController()
                    .navigationBarTitle("Plan")
            }
            .tabItem {
                Image(systemName: "map")
                Text("Plan")
            }
            
            // Tab 3: Profile
            NavigationView {
                SettingsViewController()
                    .navigationBarTitle("Settings")
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarController()
    }
}



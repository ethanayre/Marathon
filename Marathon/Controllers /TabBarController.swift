//
//  TabBarController.swift
//  Marathon
//
//  Created by Ethan Ayre on 12/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Tab 1: Home
            NavigationView {
                HomeViewController()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            // Tab 2: Favorites
            NavigationView {
                PlanViewController() // Replace Text("Favorites View") with your custom FavoritesView
                    .navigationBarTitle("Plan")
            }
            .tabItem {
                Image(systemName: "map")
                Text("Plan")
            }
            
            // Tab 3: Profile
            NavigationView {
                SettingsViewController() // Replace Text("Profile View") with your custom ProfileView
                    .navigationBarTitle("Settings")
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        // Your custom home view content here
        Text("Welcome to the Home View!")
    }
}

struct FavoritesView: View {
    var body: some View {
        // Your custom favorites view content here
        Text("This is your Favorites View.")
    }
}

struct ProfileView: View {
    var body: some View {
        // Your custom profile view content here
        Text("View your Profile here.")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



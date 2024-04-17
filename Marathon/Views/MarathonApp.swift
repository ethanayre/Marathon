//
//  MarathonApp.swift
//  Marathon
//
//  Created by Ethan Ayre on 08/04/2024.
//

import SwiftUI

@main
struct MarathonApp: App {
    
    @State private var runDate = Date()
    
    var TimeDifference: String {
        let calendar = Calendar.current
        let currentDate = Date()
        let components = calendar.dateComponents([.day], from: currentDate, to: runDate)
        
        guard let days = components.day else { return "" }
        
        if days == 1 {
            return "1 day"
        } else if days > 1 {
            return "\(days) days"
        } else if days == -1 {
            return "1 day ago"
        } else if days < -1 {
            return "\(-days) days ago"
        } else {
            return "0 days"
        }
    }
    var body: some Scene {
        WindowGroup {
            //HomeViewController()
          //  PlanViewController()
           // SettingsViewController()
            TabBarController()
     //       HomeViewController()
      //          .environmentObject(timeDifference)
        }
    }
}


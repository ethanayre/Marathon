//
//  ContentView.swift
//  Marathon
//
//  Created by Ethan Ayre on 08/04/2024.
//

import SwiftUI


struct HomeViewController: View {
    
    @State var name = "Ethan"
    @State var daysLeft = 24
   // @EnvironmentObject var timeDifference: timeDifference

    var body: some View {
        
        
        Spacer()
        HStack {
            Text("Marathon countdown")
            Image(systemName: "map.fill")
        }.font(.title).foregroundColor(.green)
        
Spacer(minLength: 40)
        
        VStack{
                   Text("Nearly there \(name)! You have \(daysLeft) days unitl your big run!")
        }
        Spacer()
        
        


        }
    }


#Preview {
    ContentView()
}

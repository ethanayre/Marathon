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
    @State private var progress = 0.6
    //@EnvironmentObject var timeDifference: timeDifference


    var body: some View {
        ZStack{
            Color(.white).ignoresSafeArea()

                    VStack {
                        
                           
                            Text("Marathon countdown").font(.title).fontWeight(.semibold).multilineTextAlignment(.leading)
                        HStack{
                            Image(systemName: "figure.run")
                                .foregroundColor(.red)
                            
                            Image(systemName: "flag.checkered")
                                    
                                }
                        
                        ProgressView(value: progress)
                                                    .progressViewStyle(.linear).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                                    
                                                
                                                Text("Nearly there \(name)! You have \(daysLeft) days until your big run!")
                                                    .font(.headline)
                                                    .fontWeight(.regular)
                                                    .multilineTextAlignment(.center)
                                                    .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
                        
                        
                        }
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.all)
                        
                        
                        
                    
                    }
                    .padding(.all)
        }
        
    }



#Preview {
    HomeViewController()
}

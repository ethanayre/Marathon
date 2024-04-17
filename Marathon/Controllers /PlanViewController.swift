//
//  Plan.swift
//  Marathon
//
//  Created by Ethan Ayre on 10/04/2024.
//

import SwiftUI

struct PlanViewController: View {
    
    @State private var runDate = Date()
    
    var timeDifference: String {
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
    
    var body: some View {
        
        VStack {
            
            Text("When is your marathon?").fontWeight(.heavy)
            
Divider()
            
            DatePicker(selection: $runDate, in: Date.now..., displayedComponents: .date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })

        Divider()
            
            Text("Your run is on \(runDate.formatted(date: .long, time: .omitted)), you have \(timeDifference) until your run, have fun").fontWeight(.regular).multilineTextAlignment(.leading)
               

         
            
        }.padding().contentMargins(20)
            
    }
}
    


#Preview {
    PlanViewController()
}

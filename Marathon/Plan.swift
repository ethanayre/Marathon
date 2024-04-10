//
//  Plan.swift
//  Marathon
//
//  Created by Ethan Ayre on 10/04/2024.
//

import SwiftUI

struct Plan: View {
    
    @State private var runDate = Date.now
    
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
                return "Today"
            }
        }
    
    var body: some View {
        VStack {
            Text("When is your marathon?")
        
            DatePicker(selection: $runDate, in: Date.now..., displayedComponents: .date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }.padding()
        
        Text("Your run is on \(runDate.formatted(date: .long, time: .omitted))")
        Text("\(timeDifference) until your run")
    }
}
    


#Preview {
    Plan()
}

//
//  describedView.swift
//  HabitTracker
//
//  Created by Carlos Vinicius on 29/09/22.
//

import SwiftUI

struct describedView: View {
    @ObservedObject var activities: Activity
    var selected: ActivityItem
    
    var body: some View {
        VStack {
            Spacer()
            Text(selected.description)
            Text("\(selected.times)")
            Spacer()
            Button {
                var copy = selected
                copy.times += 1
                let index = activities.items.firstIndex(of: selected)
                activities.items[index ?? 0] = copy
            } label: {
                Text("I did it!")
            }
        }
    }
}

struct describedView_Previews: PreviewProvider {
    static var previews: some View {
        describedView(activities: Activity(), selected: ActivityItem(title: "", description: "", times: 1))
    }
}

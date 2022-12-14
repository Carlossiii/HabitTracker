//
//  ActivitySheet.swift
//  HabitTracker
//
//  Created by Carlos Vinicius on 29/09/22.
//

import SwiftUI

struct ActivitySheet: View {
    @ObservedObject var activities: Activity
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var description = ""
        
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add new habit")
            .toolbar {
                Button("Save") {
                    let item = ActivityItem(title: title, description: description, times: 0)
                    activities.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct ActivitySheet_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySheet(activities: Activity())
    }
}

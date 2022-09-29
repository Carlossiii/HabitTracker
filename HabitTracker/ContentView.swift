//
//  ContentView.swift
//  HabitTracker
//
//  Created by Carlos Vinicius on 29/09/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var activities = Activity()
    @State private var showingActivitySheet = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(activities.items, id: \.id) { item in
                    Text(item.title)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("Habit Tracker")
            .toolbar {
                Button {
                    showingActivitySheet = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingActivitySheet) {
                ActivitySheet(activities: activities)
            }
        }
    }
        
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

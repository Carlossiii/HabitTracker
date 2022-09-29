//
//  Activity.swift
//  HabitTracker
//
//  Created by Carlos Vinicius on 29/09/22.
//

import Foundation

class Activity: ObservableObject {
    @Published var items = [ActivityItem]() {
        didSet {            
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ActivityItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        items = []
    }
}

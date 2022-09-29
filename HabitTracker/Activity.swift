//
//  Activity.swift
//  HabitTracker
//
//  Created by Carlos Vinicius on 29/09/22.
//

import Foundation

class Activity: ObservableObject {
    @Published var items = [ActivityItem]()
}

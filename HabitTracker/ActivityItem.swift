//
//  ActivityItem.swift
//  HabitTracker
//
//  Created by Carlos Vinicius on 29/09/22.
//

import Foundation

struct ActivityItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let title: String
    let description: String
}

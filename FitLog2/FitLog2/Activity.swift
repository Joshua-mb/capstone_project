//
//  Activity.swift
//  FitLog2
//
//  Created by Joshua Mburu on 8/12/25.
//

import Foundation
struct Activity: Identifiable {
    let id = UUID() // Creates a unique ID for each activity
    let name: String
    let duration: Int // Duration in minutes
    let steps: Int?   // Make steps optional
    let date: Date
}

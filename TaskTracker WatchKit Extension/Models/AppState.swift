//
//  State.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 27/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var running: Bool
    @Published var runningTime: Int64
    @Published var activities: [Activity]
    @Published var activity: Int
    
    init () {
        running = false
        runningTime = 0
        activities = activityData
        activity = 0
    }
}

//
//  Activity.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 26/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct Activity: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: Category
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case work = "Work"
        case sideProject = "Side Project"
        case sideWork = "Side Work"
        case fun = "Fun"
        case health = "Health"
    }
}

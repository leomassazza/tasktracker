//
//  HostingController.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 02/09/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<HomeView> {
    var appState = AppState()
    override var body: HomeView {
        return HomeView(appState: .init())
    }
}

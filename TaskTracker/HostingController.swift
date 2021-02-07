//
//  HostingController.swift
//  TaskTracker
//
//  Created by lmassazza on 28/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

class HostingController<ContentView>: UIHostingController<ContentView> where ContentView : View {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}


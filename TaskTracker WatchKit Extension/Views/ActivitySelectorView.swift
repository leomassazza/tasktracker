//
//  StartActivityView.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 26/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct ActivitySelectorView: View {
    @ObservedObject var appState: AppState
//    @State private var currentActivity = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tasks")
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("TTMain"))
            
            Picker(selection: self.$appState.activity, label: Text("Tasks")) {
                ForEach(0 ..< appState.activities.count) {item in
                    ActivityItemView(activity: appState.activities[item])
                }
            }
//            List(activityData) {activity in
//                ActivityItemView(activity: activity)
//            }
            
            Spacer()
            Text("Selected Activity: \(appState.activities[appState.activity].name)")
                .font(.footnote)
                .foregroundColor(Color("TTShadow"))
            
        }
    }
}

struct ActivitySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySelectorView(appState: .init())
    }
}

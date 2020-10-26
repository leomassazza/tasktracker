//
//  StartActivityView.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 26/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct ActivitySelectorView: View {
    @State private var selectedActivity = 0
    var body: some View {
        VStack(alignment: .leading) {
            Text("New Task")
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("TTMain"))
            List(activityData) {activity in
                ActivityItemView(activity: activity)
            }
            Spacer()
            Text("Selected Activity: \(activityData[(selectedActivity<=0) ? 0:selectedActivity-1].name)")
                .font(.footnote)
                .foregroundColor(Color("TTShadow"))
            
        }
    }
}

struct ActivitySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySelectorView()
    }
}

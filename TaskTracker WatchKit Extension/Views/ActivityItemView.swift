//
//  NotificationItemView.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 26/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct ActivityItemView: View {
    var activity: Activity
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(activity.name)
            Text(activity.category.rawValue)
                .font(.footnote)
                .foregroundColor(Color("TTShadow"))
        }
    }
}

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActivityItemView(activity: activityData[0])
            ActivityItemView(activity: activityData[1])
        }
    }
}

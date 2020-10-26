//
//  HomeView.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 26/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Task Tracker")
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("TTMain"))
            NavigationLink(destination: ActivitySelectorView()) {
                Text("Start new")
//                Button("Start New", action: {})
            }
            Button("Stop", action: {})
            Spacer()
            HStack() {
                Text("Activity")
                    .foregroundColor(Color("TTAccent"))
                Spacer()
                Text("1:21:22")
                    .foregroundColor(Color("TTAccent"))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

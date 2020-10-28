//
//  HomeView.swift
//  TaskTracker WatchKit Extension
//
//  Created by lmassazza on 26/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var appState: AppState
    @ObservedObject private var elapsedTimeManager = ElapsedTimeManager(intervalSeconds: 1)
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Task Tracker")
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("TTMain"))
            NavigationLink(destination: ActivitySelectorView(appState: appState)) {
                Text(appState.activities[appState.activity].name)
            }
            Button(appState.running ? "Stop" : "Start",action: {
                appState.running =  !appState.running
                if (appState.running) {
                    elapsedTimeManager.start()
                } else {
                    elapsedTimeManager.stop()
                }
                
            })
            Spacer()
            HStack() {
                Text("Current Session")
                    .foregroundColor(Color(appState.running ? "TTAccent" : "TTShadow"))
                Spacer()
                Text(elapsedTimeManager.elapsedTime)
                    .foregroundColor(Color(appState.running ? "TTAccent" : "TTShadow"))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(appState: .init())
    }
}

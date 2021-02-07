//
//  ContentView.swift
//  TaskTracker
//
//  Created by lmassazza on 02/09/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var pages: [PageViewData] = [
        PageViewData(page: PageTemplateView(headline: "Find where your time goes", text: "Use the AppleWatch application \nto track your time", image: "ImageIcon")),
        PageViewData(page: PageTemplateView(headline: "Select the Activity", text: "Tap the activity name to select another one", image: "ScreenShot1")),
        PageViewData(page:PageTemplateView(headline: "Select the right activity", text: "Find the right activity", image: "ScreenShot2")),
        PageViewData(page:PageTemplateView(headline:"Start/Stop", text: "Use the Start/Stop button to start new session", image: "ScreenShot3")),
    ]
    
    @State private var index: Int = 0
        
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            SwiperView(pages: self.pages, index: self.$index)
            HStack(spacing: 8) {
                ForEach(0..<self.pages.count) { index in
                    CircleButton(isSelected: Binding<Bool>(get: { self.index == index }, set: { _ in })) {
                            withAnimation {
                            self.index = index
                        }
                    }
                }
            }
            .padding(.bottom, 12)
            
        }
//        .opacity(0.8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

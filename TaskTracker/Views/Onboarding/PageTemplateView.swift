//
//  PageTemplateView.swift
//  TaskTracker
//
//  Created by lmassazza on 28/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct PageTemplateView: View {
    var headline: String
    var text: String
    var image: String
    var body: some View {
        VStack {
            Text("Time Tracker")
                .font(.largeTitle)
                .padding(.top, 24.0)
                .padding(.bottom, 48.0)
                .foregroundColor(Color("TTAccent"))
            
            Text(headline)
                .font(.title)
                .padding(.bottom, 12.0)
                .foregroundColor(Color("TTMain"))
            Text(text)
                .font(.body)
                .padding(.bottom, 12.0)
                .foregroundColor(Color("TTMain"))
                .padding(.horizontal, 60.0)
                
            Image(image)
            Spacer()
            HStack {
                Spacer()
            }
            Text("Powered by Tresmilia")
                .font(.headline)
                .foregroundColor(Color("TTShadow"))
                .padding(.bottom, 36.0)
        }
        .background(Color.black)

    }
}

struct PageTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        PageTemplateView(headline: "Start tracking your time", text: "Select the activity and Tap Start to begin very large text multiline with \nlines", image: "ScreenShot1")
    }
}

//
//  PageView.swift
//  TaskTracker
//
//  Created by lmassazza on 28/10/2020.
//  Copyright © 2020 tresmilia. All rights reserved.
//

import SwiftUI

struct PageViewData: Identifiable {
    let id = UUID().uuidString
    let page: PageTemplateView
}

struct PageView: View {
    let viewData: PageViewData
    var body: some View {
        viewData.page
    }
}

struct CircleButton: View {
    @Binding var isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) { Circle()
            .frame(width: 16, height: 16)
            .foregroundColor(self.isSelected ? Color.white : Color.white.opacity(0.5))
        }
    }
}


//struct PageView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageView(viewData: <#PageViewData#>)
//    }
//}

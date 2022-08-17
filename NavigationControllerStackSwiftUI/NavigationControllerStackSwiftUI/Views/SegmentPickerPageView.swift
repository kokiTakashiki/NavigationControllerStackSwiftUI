//
//  SegmentPickerPageView.swift
//  NavigationControllerStackSwiftUI
//
//  Created by 武田孝騎 on 2022/08/17.
//

import SwiftUI
import UIKit

struct SegmentPickerPageView: View {
    //@State private var selection = 0
    @State private var selectionIndex:PageIndex = .one
    let config:Configuration
    
    var body: some View {
        VStack(spacing: 0) {
            Picker("", selection: $selectionIndex) {
                Text("Page1").tag(PageIndex.one)
                Text("Page2").tag(PageIndex.two)
                Text("Page3").tag(PageIndex.three)
                Text("Page4").tag(PageIndex.four)
                Text("Page5").tag(PageIndex.five)
                Text("Page6").tag(PageIndex.six)
            }.pickerStyle(SegmentedPickerStyle())
            
            TabView(selection: $selectionIndex) {
                PageView(index: .one,
                         config: config)
                PageView(index: .two,
                         config: config)
                PageView(index: .three,
                         config: config)
                PageView(index: .four,
                         config: config)
                PageView(index: .five,
                         config: config)
                PageView(index: .six,
                         config: config)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct SegmentPickerPageView_Previews: PreviewProvider {
    static let config = Configuration()
    static var previews: some View {
        Group {
            SegmentPickerPageView(config: config)
                .previewDevice("iPhone 12")
            SegmentPickerPageView(config: config)
                .previewDevice("iPod touch (7th generation)")
        }
    }
}

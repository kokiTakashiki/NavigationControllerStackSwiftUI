//
//  PageIndex.swift
//  NavigationControllerStackSwiftUI
//
//  Created by 武田孝騎 on 2022/08/18.
//

import Foundation

enum PageIndex: Int {
    case one
    case two
    case three
    case four
    case five
    case six
    
    var name: String {
        switch self {
            case .one: return "１ページ目"
            case .two: return "２ページ目"
            case .three: return "３ページ目"
            case .four: return "４ページ目"
            case .five: return "５ページ目"
            case .six: return "６ページ目"
        }
    }
}

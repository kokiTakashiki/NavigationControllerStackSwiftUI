//
//  PageView.swift
//  NavigationControllerStackSwiftUI
//
//  Created by 武田孝騎 on 2022/08/18.
//

import SwiftUI
import UIKit

final class Configuration {
    weak var hostingController: UIViewController?
}

struct PageView: View {
    
    var index: PageIndex
    let config: Configuration
    
    var body: some View {
        GenericUIViewControllerWapper(config: config, factory: {
            switch index {
            case .one:
                return PageOneViewController()
            case .two:
                return PageTwoViewController()
            case .three:
                return PageThreeViewController()
            case .four:
                return PageFourViewController()
            case .five:
                return PageFiveViewController()
            case .six:
                return PageSixViewController()
            }
        })
        .tag(index)
    }
}

struct GenericUIViewControllerWapper<ViewControllerType: UIViewController>: UIViewControllerRepresentable {
    let config: Configuration
    let factory: () -> ViewControllerType
    
    func makeUIViewController(context: Context) -> ViewControllerType {
        let viewController = factory()
        config.hostingController?.addChild(viewController)
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

//
//  PageViewController.swift
//  Landmarks
//
//  Created by Yongwoo Marco on 2022/05/20.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll,
                                                      navigationOrientation: .horizontal)
        return pageViewController
    }
    
    // Xcode 13.1 ~
//    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
//        pageViewController.setViewControllers(
//            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
//    }
    
    // ~ Xcode 13.0
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        (uiViewController as? UIPageViewController)?.setViewControllers(
            [UIHostingController(rootView: pages[0])],
            direction: .forward, animated: true)
    }
}

//
//  PageControl.swift
//  Landmarks
//
//  Created by Yongwoo Marco on 2022/05/23.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPage: Int
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> some UIView {
        let control = UIPageControl()
        control.numberOfPages = numberOfPage
        control.addTarget(context.coordinator, action: #selector(Coordinator.updateCurrentPage(sender:)), for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        (uiView as? UIPageControl)?.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var control: PageControl
        
        init(_ control: PageControl) {
            self.control = control
        }
        
        @objc func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}

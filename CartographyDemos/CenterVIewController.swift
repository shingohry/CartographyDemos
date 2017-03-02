//
//  CenterVIewController.swift
//  CartographyDemos
//
//  Created by hiraya.shingo on 2017/03/02.
//  Copyright © 2017年 shingohry. All rights reserved.
//

import UIKit
import Cartography

class CenterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let childView = UIView()
        childView.backgroundColor = UIColor.darkGray
        view.addSubview(childView)
        
        // Use NSLayoutConstraint directly
//        childView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint(
//            item: childView,
//            attribute: .height,
//            relatedBy: .equal,
//            toItem: nil,
//            attribute: .height,
//            multiplier: 1.0,
//            constant: 100.0
//            ).isActive = true
//        NSLayoutConstraint(
//            item: childView,
//            attribute: .width,
//            relatedBy: .equal,
//            toItem: nil,
//            attribute: .width,
//            multiplier: 1.0,
//            constant: 100.0
//            ).isActive = true
//        NSLayoutConstraint(
//            item: childView,
//            attribute: .centerX,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .centerX,
//            multiplier: 1.0,
//            constant: 0.0
//            ).isActive = true
//        NSLayoutConstraint(
//            item: childView,
//            attribute: .centerY,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .centerY,
//            multiplier: 1.0,
//            constant: 0.0
//            ).isActive = true
        
        // Use Cartography
        constrain(childView, view) { childView, view in
            childView.width  == 100
            childView.height == 100
            childView.centerX == view.centerX
            childView.centerY == view.centerY
        }
    }
}

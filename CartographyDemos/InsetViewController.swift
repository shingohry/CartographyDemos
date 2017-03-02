//
//  InsetViewController.swift
//  CartographyDemos
//
//  Created by hiraya.shingo on 2017/03/02.
//  Copyright © 2017年 shingohry. All rights reserved.
//

import UIKit
import WebKit
import Cartography

class InsetViewController: UIViewController {
    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        
        // Use NSLayoutConstraint directly
        webView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint(
//            item: webView,
//            attribute: .left,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .left,
//            multiplier: 1.0,
//            constant: 0.0
//            ).isActive = true
//        NSLayoutConstraint(
//            item: webView,
//            attribute: .right,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .right,
//            multiplier: 1.0,
//            constant: 0.0
//            ).isActive = true
//        NSLayoutConstraint(
//            item: webView,
//            attribute: .top,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .top,
//            multiplier: 1.0,
//            constant: 0.0
//            ).isActive = true
//        NSLayoutConstraint(
//            item: webView,
//            attribute: .bottom,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .bottom,
//            multiplier: 1.0,
//            constant: 0.0
//            ).isActive = true
        
        // Use Cartography
        constrain(webView, view) { webView, view in
            webView.edges == inset(view.edges, 0.0, 0.0, 0.0, 0.0)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let request = URLRequest(url: URL(string: "https://github.com/robb/Cartography")!)
        webView.load(request)
    }
}

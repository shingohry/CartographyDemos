//
//  ReplacingConstraintsViewController.swift
//  CartographyDemos
//
//  Created by 平屋真吾 on 2017/03/03.
//  Copyright © 2017 shingohry. All rights reserved.
//

import UIKit
import Cartography

class ReplacingConstraintsViewController: UIViewController {
    let childView = UIView()
    let constraintGroup = ConstraintGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        childView.backgroundColor = UIColor.darkGray
        view.addSubview(childView)
        
        constrain(childView) { view in
            view.width  == 100
            view.height == 100
        }
        
        // Attach `childView` to the middle left corner of its superview
        constrain(childView, replace: constraintGroup) { childView in
            childView.centerY  == childView.superview!.centerY
            childView.left == childView.superview!.left
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Move the childView to the bottom right corner of its superview
        constrain(childView, replace: constraintGroup) { childView in
            childView.bottom == childView.superview!.bottom
            childView.right  == childView.superview!.right
        }
        
        UIView.animate(withDuration: 0.5, animations: view.layoutIfNeeded)
    }
}

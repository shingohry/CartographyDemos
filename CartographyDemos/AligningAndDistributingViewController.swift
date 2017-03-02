//
//  AligningAndDistributingViewController.swift
//  CartographyDemos
//
//  Created by Shingo Hiraya on 3/3/17.
//  Copyright © 2017 shingohry. All rights reserved.
//

import UIKit
import Cartography

class AligningAndDistributingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let view1 = UIView()
        view1.backgroundColor = UIColor.darkGray
        view.addSubview(view1)
        
        let view2 = UIView()
        view2.backgroundColor = UIColor.orange
        view.addSubview(view2)
        
        let view3 = UIView()
        view3.backgroundColor = UIColor.brown
        view.addSubview(view3)
        
        constrain(view1, view2, view3, view) { view1, view2, view3, view in
            view2.center == view.center
            
            view2.height == 80.0
            view2.width == 80.0
            view1.size == view2.size
            view3.size == view2.size
            
            // Aligns
            align(top: view1, view2, view3)
            
            // Distributes
            distribute(by: 20.0, horizontally: view1, view2, view3)
        }
    }
}

//
//  ViewController.swift
//  TabBar_controller
//
//  Created by Student on 21/07/25.
//

import UIKit

class PinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "10"
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }
}


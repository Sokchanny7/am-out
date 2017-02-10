//
//  TabBarViewController.swift
//  Amout
//
//  Created by sok channy on 2/2/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

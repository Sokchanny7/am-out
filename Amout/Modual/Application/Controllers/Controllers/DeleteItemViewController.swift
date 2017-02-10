//
//  DeleteItemViewController.swift
//  Amout
//
//  Created by sok channy on 2/3/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

class DeleteItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        //view.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        view.backgroundColor = UIColor.black
        self.tableView.tableFooterView  = view
        self.tableView.separatorStyle   = UITableViewCellSeparatorStyle.none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

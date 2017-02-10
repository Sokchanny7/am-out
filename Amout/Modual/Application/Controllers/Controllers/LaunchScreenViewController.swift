//
//  LaunchScreenViewController.swift
//  Amout
//
//  Created by sok channy on 2/1/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        Commond.shared.delay {
            self.performSegue(withIdentifier: SegueIdentifier.login.rawValue, sender: nil)
        }        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

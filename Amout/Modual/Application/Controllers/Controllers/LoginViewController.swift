//
//  LoginViewController.swift
//  Amout
//
//  Created by sok channy on 2/2/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit
import FacebookLogin

class LoginViewController: UIViewController {
    
    @IBOutlet weak var componentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        //loginButton.center = view.center
        
        //view.addSubview(loginButton)
        
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()    
    }
    
    @IBAction func loginViewFaceBookButtonPressed(_ sender: Any) {
        let loginManager = LoginManager()
        loginManager.logIn([ .publicProfile ], viewController: self) { loginResult in
            switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Logged in!")
                print(grantedPermissions)
                print(declinedPermissions)
                print(accessToken)
            }
        }
    }
    
    
    @IBAction func loginViewGmailButtonPressed(_ sender: Any) {
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

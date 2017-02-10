//
//  PopupViewController.swift
//  Amout
//
//  Created by sok channy on 2/3/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var tableViewPopupTitle  : UILabel!
    @IBOutlet weak var backGroundView       : UIView!
    @IBOutlet var tableViewView             : CUIView!
    
    @IBOutlet var warmingView: CUIView!
    
    @IBOutlet weak var warmingImage: UIImageView!
    @IBOutlet weak var warmingMessage: UILabel!
    
    
    var handleClosure : ((Int)->())?
    var delegate : PopupDelegate!

    var items : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.showAnimate()
    }
    
    func attachDelegate(_ delegate : PopupDelegate){
        self.delegate = delegate
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func popup(title : String, items : [String]){
        self.tableViewPopupTitle.text = title
        self.items = items
        self.tableViewView.center(self.backGroundView)
        self.backGroundView.addSubview(self.tableViewView)
    }
    
    func popup(message : String,image : UIImage) {
        self.warmingImage.image     = image
        self.warmingMessage.text    = message
        self.warmingView.center(self.view)
        self.backGroundView.addSubview(self.warmingView)
    }
        
    @IBAction func cancelButtonPressed(_ sender: Any) {
       // self.delegate.onCancelPressed()
        self.removePopup()
    }
    
    @IBAction func okButtonPressed(_ sender: Any) {
        //self.delegate.onOkPressed(0)
        self.handleClosure?(12)
        self.removePopup()
    }
    func removePopup(){
        self.view.fadeOut()
    }
    
    
    func showAnimate(){
        self.view.fadeIn()
    }

}


extension PopupViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.popupCell.rawValue, for: indexPath)
        return cell
    }
}

protocol PopupDelegate {
    func onOkPressed(_ index : Int)
    func onCancelPressed()
}


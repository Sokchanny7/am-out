//
//  MainViewController.swift
//  Amout
//
//  Created by sok channy on 2/1/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var homeTableViewView: UIView!
    @IBOutlet var homeDropDownTableView: UIView!
    @IBOutlet weak var homeDropDownFrameView: UIView!
    @IBOutlet weak var homeDropButton: UIButton!
    @IBOutlet var subMenuView: UIView!
    @IBOutlet weak var userCollectionView: UICollectionView!
    
    @IBOutlet weak var indoorButton: CUIButton!
    @IBOutlet weak var outdoorButton: CUIButton!
    
    
    
    @IBOutlet var buttonCollect: [CUIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.homeTableView.delegate     = self
        self.homeTableView.dataSource   = self
        self.homeTableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
        self.userCollectionView.delegate    = self
        self.userCollectionView.dataSource  = self
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func createHomeButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: SegueIdentifier.createHome.rawValue, sender: nil)
    }
    
    
    @IBAction func moreHomeButtonPressed(_ sender: UIButton) {
        Commond.shared.popup(self, "More home", ["a"], ok: { index in
            print("OK presed data : \(index)")
        })
    }
    
    @IBAction func lessHomeButtonPressed(_ sender: Any) {
        self.homeDropButton.setBackgroundImage(#imageLiteral(resourceName: "caret-arrow-down"), for: .normal)
        self.homeDropDownTableView.removeFromSuperview()
        self.homeDropDownFrameView.layer.borderWidth = 0
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    
    
    @IBAction func dropdownSubmenuButtonPressed(_ sender: Any) {
        self.subMenuView.frame = CGRect(origin: CGPoint(x : 0, y : self.homeDropDownFrameView.frame.height), size: self.subMenuView.frame.size)
        self.homeTableViewView.addSubview(self.subMenuView)
    }
    
    @IBAction func closeSubmenuButtonPress(_ sender: Any) {
        self.subMenuView.removeFromSuperview()
    }
    
    
}

extension MainViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.houseCell.rawValue, for: indexPath)
        return cell
    }
}
extension MainViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifier.userCollectionCell.rawValue, for: indexPath)
        return cell
    }
}




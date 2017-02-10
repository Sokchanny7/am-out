//
//  CommondClass.swift
//  Amout
//
//  Created by sok channy on 2/2/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

fileprivate var commond : Commond!
public class Commond {
    
    private init() {}
    static public var shared : Commond = {
        if commond == nil {
            commond = Commond()
        }
        return commond
    }()
    
    func delay(delay:Double = 1.5, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
    
    func findViewController(withIdenfirier idenfirier : String, storyBoardName : String) -> UIViewController {
        let vc = UIStoryboard(name: storyBoardName, bundle: nil).instantiateViewController(withIdentifier: idenfirier)
        return vc
    }
    
    func popup(_ target : UIViewController,_ title : String , _ items : [String], ok : @escaping (Int) -> ()) {
        let popup =  self.findViewController(withIdenfirier: VCIdentifier.popUp.rawValue, storyBoardName: StoryBoard.popup.rawValue) as! PopupViewController
        UIApplication.shared.delegate?.window!!.addSubview(popup.view)
        popup.popup(title : title, items : items)
        target.addChildViewController(popup)
        popup.handleClosure = { index in
            ok(index)
        }
    }
    func popup(_ target : UIViewController,_ message : String , _ image : UIImage,ok : @escaping (Int) -> ()) {
        let popup =  self.findViewController(withIdenfirier: VCIdentifier.popUp.rawValue, storyBoardName: StoryBoard.popup.rawValue) as! PopupViewController
        UIApplication.shared.delegate?.window!!.addSubview(popup.view)
        popup.popup(message : message, image : image)
        target.addChildViewController(popup)
        popup.handleClosure = { index in
            ok(index)
        }
    }
}

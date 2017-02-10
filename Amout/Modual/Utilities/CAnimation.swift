//
//  CAnimation.swift
//  Amout
//
//  Created by sok channy on 2/1/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

extension UIView {
    
    public func moveUp(target view : UIView, duration : CGFloat = 0.25, length : CGFloat = 50.0){
        self.alpha = 1.0
        self.frame = view.frame
        self.transform = CGAffineTransform(translationX: 0 , y: view.frame.height)
        UIView.animate(withDuration: 0.25, animations: {
            view.transform = CGAffineTransform(translationX: 0 , y: 0)
            view.alpha = 1.0
        })
    }
    
    public func moveDown(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    public func moveLeft(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    public func moveRight(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    public func moveUpOut(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    public func moveDownOut(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    public func moveLeftOut(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    public func moveRightOut(duration : CGFloat = 0.25, length : CGFloat = 50.0){
        
    }
    
    func slideRightToLeftInt (_ view : UIView) {
        view.alpha = 0.5
        view.transform = CGAffineTransform(translationX: view.bounds.width , y: 0)
        UIView.animate(withDuration: 0.25, animations: {
            view.transform = CGAffineTransform(translationX: 0 , y: 0)
            view.alpha = 1.0
        })
    }
    
    func slideLeftToRightOut (_ view : UIView) {
        UIView.animate(withDuration: 0.25, animations:{
            view.transform = CGAffineTransform(translationX: 0 , y : 0)
            view.alpha = 0.0
        }, completion : {(finished : Bool) in
            if finished
            {
                view.removeFromSuperview()
            }
        })
    }
    
    func fadeIn() {
        self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.alpha = 1.0
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func fadeOut(){
        UIView.animate(withDuration: 0.25, animations:{
            self.transform  = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.alpha      = 0.0
        }, completion : {(finished : Bool) in
            if finished
            {
                self.removeFromSuperview()
            }
        })
    }
    
    func shake(_ view : UIView) {
        let animation : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.repeatCount = 6
        animation.duration = (0.5) / TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.byValue = -5
        view.layer.add(animation, forKey: "shake")
    }
}

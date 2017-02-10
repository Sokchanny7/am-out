//
//  CustomView.swift
//  Amout
//
//  Created by sok channy on 2/1/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import UIKit

@IBDesignable
class CUIImageView: UIImageView {
    @IBInspectable var borderRaduis : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = borderRaduis
        }
    }
    @IBInspectable var borderWith : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWith
            self.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBInspectable var borderColar : UIColor = UIColor.red {
        didSet{
            self.layer.borderColor = borderColar.cgColor
        }
    }
}

@IBDesignable
class CUITextField: UITextField {
    @IBInspectable var borderRaduis : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = borderRaduis
        }
    }
    @IBInspectable var borderWith : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWith
            self.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBInspectable var borderColar : UIColor = UIColor.red {
        didSet{
            self.layer.borderColor = borderColar.cgColor
        }
    }
}


@IBDesignable
class CUIView: UIView {
    @IBInspectable var borderRaduis : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = borderRaduis
        }
    }
    @IBInspectable var borderWith : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWith
            self.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBInspectable var borderColar : UIColor = UIColor.red {
        didSet{
            self.layer.borderColor = borderColar.cgColor
            self.clipsToBounds = true
        }
    }
    
}



@IBDesignable
class CUIButton: UIButton {
    @IBInspectable var borderRaduis : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = borderRaduis
        }
    }
    
    @IBInspectable var borderWith : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWith
            self.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBInspectable var borderColar : UIColor = UIColor.red {
        didSet{
            self.layer.borderColor = borderColar.cgColor
        }
    }
}

@IBDesignable
class CUITextView: UITextView {
    @IBInspectable var borderRaduis : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = borderRaduis
        }
    }
    @IBInspectable var borderWith : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWith
            self.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBInspectable var borderColar : UIColor = UIColor.red {
        didSet{
            self.layer.borderColor = borderColar.cgColor
        }
    }
    
}

@IBDesignable
class CUINavigationBar: UINavigationBar {
    @IBInspectable var bakButtonTitle : String = "" {
        didSet{
            
        }
    }
}

extension UIButton {
    func setBorderColor(width : CGFloat = 1, color : UIColor = UIColor.blue) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    func clearBorder(){
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
    func active() -> Bool {
        return self.isSelected
    }
    
    func activeMe(disActives : UIButton...) {
        self.setBorderColor()
        for button in disActives {
            button.clearBorder()
        }
    }
}

extension UIView {
    func center(_ parent : UIView) {
        let centerY     = parent.frame.height   / 2
        let centerX     = parent.frame.width    / 2
        let halfWidth   = self.frame.width      / 2
        let halfHeight  = self.frame.height     / 2
        
        self.frame = CGRect(origin: CGPoint(x : centerX - halfWidth, y : centerY - halfHeight), size: self.frame.size)
    }
}

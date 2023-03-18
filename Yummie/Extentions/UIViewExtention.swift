//
//  UIViewExtention.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 15.03.2023.
//

import UIKit
extension UIView
{
    
    @IBInspectable var cornerRadius : CGFloat
    {
        get{return cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}

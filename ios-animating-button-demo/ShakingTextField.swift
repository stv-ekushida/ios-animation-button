//
//  ShakingTextField.swift
//  ios-animating-button-demo
//
//  Created by Kushida　Eiji on 2017/05/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension UITextField {

    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4,
                                                       y: self.center.y))

        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4,
                                                       y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}

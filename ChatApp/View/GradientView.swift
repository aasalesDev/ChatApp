//
//  GradientView.swift
//  ChatApp
//
//  Created by Anderson Sales on 22/02/23.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.systemBlue {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.systemYellow {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

//
//  ViewController.swift
//  Shimmer
//
//  Created by Ahmed Mokhtar on 8/17/18.
//  Copyright © 2018 Ahmed Mokhtar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 1, alpha: 0.15)
        
        let darkTextLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 480))
        darkTextLabel.text = "Ahmed"
        darkTextLabel.font = UIFont.systemFont(ofSize: 88)
        darkTextLabel.textColor = UIColor(white: 1, alpha: 0.1)
        darkTextLabel.textAlignment = .center
        view.addSubview(darkTextLabel)
        
        
        let whiteTextLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 480))
        whiteTextLabel.text = "Ahmed"
        whiteTextLabel.font = UIFont.systemFont(ofSize: 88)
        whiteTextLabel.textColor = .white
        whiteTextLabel.textAlignment = .center
        view.addSubview(whiteTextLabel)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0 , 0.5 , 1]
        gradientLayer.frame = whiteTextLabel.frame
        
//        view.layer.addSublayer(gradientLayer)
//        whiteTextLabel.layer.mask = gradientLayer


        let angle = 45 * Float.pi / 180
        gradientLayer.transform = CATransform3DMakeRotation(CGFloat(angle), 0, 0, 1)
        whiteTextLabel.layer.mask = gradientLayer
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.repeatCount = Float.infinity
        animation.duration = 2
////
        gradientLayer.add(animation, forKey: "key")
        
    }



}


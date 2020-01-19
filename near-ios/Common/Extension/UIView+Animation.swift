//
//  UIView+Animation.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

extension UIView {

    func executeScaleAnimation(isHighlighted: Bool) {
        DispatchQueue.main.async {
            let animationOptions: UIView.AnimationOptions = true ? [.allowUserInteraction] : []
            if isHighlighted {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: animationOptions, animations: {
                    self.transform = .init(scaleX: 0.96, y: 0.96)
                }, completion: nil)
            } else {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: animationOptions, animations: {
                    self.transform = .identity
                }, completion: nil)
            }
        }
    }

    func executeDumpingAnimation() {
        DispatchQueue.main.async {
            let pulse1 = CASpringAnimation(keyPath: "transform.scale")
            pulse1.duration = 0.2
            pulse1.fromValue = 1.0
            pulse1.toValue = 1.12
            pulse1.autoreverses = true
            pulse1.repeatCount = 1
            pulse1.initialVelocity = 0.5
            pulse1.damping = 0.8
            let animationGroup = CAAnimationGroup()
            animationGroup.duration = 0.5
            animationGroup.repeatCount = 1
            animationGroup.animations = [pulse1]
            self.layer.add(animationGroup, forKey: "pulse")
        }
    }
}


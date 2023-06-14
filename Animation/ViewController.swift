//
//  ViewController.swift
//  Animation
//
//  Created by Гамзат Гасанов on 13.06.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet weak var AnimatedView: SpringView!
    @IBOutlet weak var AnimationButton: SpringButton!
    @IBOutlet weak var InfoLabel: UILabel!
    
    var currentAnimation = AnimationModel.randomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimatedView.layer.cornerRadius = 10
        AnimationButton.layer.cornerRadius = 10
    }
    
    @IBAction func AnimationButtonTapped(_ sender: SpringButton) {
        AnimatedView.animation = currentAnimation.preset
        AnimatedView.curve = currentAnimation.curve
        AnimatedView.force = CGFloat(currentAnimation.force)
        AnimatedView.duration = CGFloat(currentAnimation.duration)
        AnimatedView.delay = CGFloat(currentAnimation.delay)
        AnimatedView.animate()
        
        InfoLabel.text = """
    Preset: \(currentAnimation.preset)
    Curve: \(currentAnimation.curve)
    Force: \(String(format: "%.1f", currentAnimation.force))
    Duration: \(String(format: "%.1f", currentAnimation.duration))
    Delay: \(String(format: "%.1f", currentAnimation.delay))
    """
        
        currentAnimation = AnimationModel.randomAnimation()
        
        sender.setTitle(currentAnimation.preset, for: .normal)
    }
}


//
//  ViewController.swift
//  Animation
//
//  Created by Гамзат Гасанов on 13.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var animationButton: SpringButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    var nextAnimation = Animation.randomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedView.layer.cornerRadius = 10
        animationButton.layer.cornerRadius = 10
        
        updateButtonTitle()
        updateInfoLabel()
    }
    
    @IBAction func AnimationButtonTapped(_ sender: SpringButton) {
        animatedView.animation = nextAnimation.preset
        animatedView.curve = nextAnimation.curve
        animatedView.force = CGFloat(nextAnimation.force)
        animatedView.duration = CGFloat(nextAnimation.duration)
        animatedView.delay = CGFloat(nextAnimation.delay)
        animatedView.animate()
        
        nextAnimation = Animation.randomAnimation()
        
        updateButtonTitle()
        updateInfoLabel()
    }
    
    private func updateButtonTitle() {
        animationButton.setTitle(nextAnimation.preset, for: .normal)
    }
    
    private func updateInfoLabel() {
        infoLabel.text = """
    Preset: \(nextAnimation.preset)
    Curve: \(nextAnimation.curve)
    Force: \(String(format: "%.1f", nextAnimation.force))
    Duration: \(String(format: "%.1f", nextAnimation.duration))
    Delay: \(String(format: "%.1f", nextAnimation.delay))
    """
    }
    
}


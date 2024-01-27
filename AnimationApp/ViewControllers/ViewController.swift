//
//  ViewController.swift
//  AnimationApp
//
//  Created by Natalia Ovdina on 26.01.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var button: UIButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var randomAnimation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("Run", for: .normal)
        setInitialSettings()
    }
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        setInitialSettings()
        animationView.animate()
        
        setupLabels()
        setupAnimationView()
        animationView.animate()
        
        randomAnimation = Animation.getRandomAnimation()
        sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
        
    }
    
    private func setInitialSettings() {
        presetLabel.text = randomAnimation.preset
        curveLabel.text = randomAnimation.curve
        forceLabel.text =  String(format: "%.2f", randomAnimation.force)
        durationLabel.text = String(format: "%.2f", randomAnimation.duration)
        delayLabel.text = String(format: "%.2f", randomAnimation.delay)
    }
    private func setupLabels() {
        presetLabel.text = randomAnimation.preset
        curveLabel.text = randomAnimation.curve
        forceLabel.text = String(format: "%.2f", randomAnimation.force)
        durationLabel.text = String(format: "%.2f", randomAnimation.duration)
        delayLabel.text = String(format: "%.2f", randomAnimation.delay)
    }
    
    private func setupAnimationView() {
        animationView.animation = randomAnimation.preset
        animationView.curve = randomAnimation.curve
        animationView.force = Double(randomAnimation.force)
        animationView.duration = Double(randomAnimation.duration)
        animationView.delay = Double(randomAnimation.delay)
    }
    
    
    
}


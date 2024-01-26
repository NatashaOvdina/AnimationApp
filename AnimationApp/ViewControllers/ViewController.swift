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
    
    private var randomAnimation = getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("Run", for: .normal)
        setInitialSettings()
    }
    
    private func setInitialSettings() {
        presetLabel.text = "squeezeUp"
        curveLabel.text = "easeOut"
        forceLabel.text = "1.24"
        durationLabel.text = "0.82"
        delayLabel.text = "0.30"
    }
    
    private func setupAnimationView() {
        animationView.animation = presetLabel.text ?? ""
        animationView.curve = curveLabel.text ?? ""
        animationView.force = Double(forceLabel.text ?? "") ?? 0.0
        animationView.duration = Double(durationLabel.text ?? "") ?? 0.0
        animationView.delay = Double(delayLabel.text ?? "") ?? 0.0
    }
    
    private func setupLabels() {
        presetLabel.text = "Preset: \(randomAnimation.preset.description)"
        curveLabel.text = "Curve: \(randomAnimation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", randomAnimation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", randomAnimation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", randomAnimation.delay))"
    }
    
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        setupAnimationView()
        animationView.animate()
        setupLabels()
        sender.setTitle("Run \(presetLabel.text ?? "")", for: .normal)
     
        
       
    
        
    }
    
}

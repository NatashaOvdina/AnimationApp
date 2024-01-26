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
        setupLabels()
    }
    
    private func setupAnimationView() {
        animationView.animation = randomAnimation.preset
        animationView.curve = randomAnimation.curve
        animationView.force = randomAnimation.force
        animationView.duration = randomAnimation.duration
        animationView.delay = randomAnimation.delay
    }
    
    private func setupLabels() {
        presetLabel.text = "Preset: \(randomAnimation.preset.description)"
        curveLabel.text = "Curve: \(randomAnimation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", randomAnimation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", randomAnimation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", randomAnimation.delay))"
    }
    
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        sender.setTitle("Run \(randomAnimation.preset)", for: .normal)

            for _ in 1...randomAnimation.preset.count {
                setupAnimationView()
                setupLabels()
                animationView.animate()
            }
        }
    }
    


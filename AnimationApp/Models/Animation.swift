//
//  Animation.swift
//  AnimationApp
//
//  Created by Natalia Ovdina on 26.01.2024.
//

import Foundation

struct Animation {
    var preset: String
    var curve: String
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animationPreset.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animationCurve.randomElement()?.rawValue ?? "",
            force: CGFloat.random(in: 0.1...3.0),
            duration: CGFloat.random(in: 0.2...3.0),
            delay: CGFloat.random(in: 0.1...2.0)
        )
    }
}


//
//  Animation.swift
//  AnimationApp
//
//  Created by Natalia Ovdina on 26.01.2024.
//


struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    // можно было добавить метод description 
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animationPreset.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animationCurve.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.1...3.0),
            duration: Double.random(in: 0.2...3.0),
            delay: Double.random(in: 0.1...2.0)
        )
    }
}


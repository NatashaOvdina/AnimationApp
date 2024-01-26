//
//  DataStore.swift
//  AnimationApp
//
//  Created by Natalia Ovdina on 26.01.2024.
//

import Foundation
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animationPreset = AnimationPreset.allCases
    
    let animationCurve = AnimationCurve.allCases
    
    private init() {}
}

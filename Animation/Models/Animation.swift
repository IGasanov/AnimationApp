//
//  Animation.swift
//  Animation
//
//  Created by Гамзат Гасанов on 14.06.2023.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float

    static func randomAnimation() -> Animation {
        let presets = AnimationPreset.allCases.map { $0.rawValue }
        let curves = AnimationCurve.allCases.map { $0.rawValue }
        let randomPreset = presets[Int.random(in: 0..<presets.count)]
        let randomCurve = curves[Int.random(in: 0..<curves.count)]
        let randomForce = Float.random(in: 0.5...2.5)
        let randomDuration = Float.random(in: 0.5...2.5)
        let randomDelay = Float.random(in: 0.5...2.5)
        
        return Animation(preset: randomPreset, curve: randomCurve, force: randomForce, duration: randomDuration, delay: randomDelay)
    }
}

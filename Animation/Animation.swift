//
//  Animation.swift
//  Animation
//
//  Created by Гамзат Гасанов on 14.06.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
}

class AnimationModel {
    static func randomAnimation() -> Animation {
        let randomPreset = DataStore.shared.presets.randomElement() ?? ""
        let randomCurve = DataStore.shared.curves.randomElement() ?? ""
        let randomForce = Float.random(in: 0.5...2.5)
        let randomDuration = Float.random(in: 0.5...2.5)
        let randomDelay = Float.random(in: 0.5...2.5)
        
        return Animation(preset: randomPreset, curve: randomCurve, force: randomForce, duration: randomDuration, delay: randomDelay)
    }
}

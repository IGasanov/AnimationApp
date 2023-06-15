//
//  DataStore.swift
//  Animation
//
//  Created by Гамзат Гасанов on 14.06.2023.
//

import Foundation
import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
}

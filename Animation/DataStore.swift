//
//  DataStore.swift
//  Animation
//
//  Created by Гамзат Гасанов on 14.06.2023.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let presets: [String]
    let curves: [String]
    
    private init() {
        presets = ["pop",
                   "slideLeft",
                   "slideRight",
                   "slideDown",
                   "slideUp",
                   "squeezeLeft",
                   "squeezeRight",
                   "squeezeDown",
                   "squeezeUp",
                   "fadeIn",
                   "fadeOut",
                   "fadeOutIn",
                   "fadeInLeft",
                   "fadeInRight",
                   "fadeInDown",
                   "fadeInUp",
                   "zoomIn",
                   "zoomOut",
                   "fall",
                   "shake",
                   "flipX",
                   "flipY",
                   "morph",
                   "squeeze",
                   "flash",
                   "wobble",
                   "swing"]
        curves = ["easeIn",
                  "easeOut",
                  "easeInOut",
                  "linear",
                  "spring",
                  "easeInSine",
                  "easeOutSine",
                  "easeInOutSine",
                  "easeInQuad",
                  "easeOutQuad",
                  "easeInOutQuad",
                  "easeInCubic",
                  "easeOutCubic",
                  "easeInOutCubic",
                  "easeInQuart",
                  "easeOutQuart",
                  "easeInOutQuart",
                  "easeInQuint",
                  "easeOutQuint",
                  "easeInOutQuint",
                  "easeInExpo",
                  "easeOutExpo",
                  "easeInOutExpo",
                  "easeInCirc",
                  "easeOutCirc",
                  "easeInOutCirc",
                  "easeInBack",
                  "easeOutBack",
                  "easeInOutBack"]
    }
}

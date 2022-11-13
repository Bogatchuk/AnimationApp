//
//  Extension + UIButton.swift
//  AnimationApp
//
//  Created by Roma Bogatchuk on 13.11.2022.
//

import UIKit

extension UIButton {
    
    func pulsate(){
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 0.6 //продолжительность анимации
        pulse.fromValue = 0.95 // первоначальное значение
        pulse.toValue = 1 // конечное значение анимации
        pulse.autoreverses = true // анимация в обратную сторону
        pulse.initialVelocity = 0.5 // ускорение анимации
        pulse.damping = 1 //замедление анимации
        
        
        layer.add(pulse, forKey: nil)
        
        
        
        
    }
}

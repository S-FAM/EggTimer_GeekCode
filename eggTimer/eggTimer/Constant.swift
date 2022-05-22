//
//  Constant.swift
//  eggTimer
//
//  Created by hyeonseok on 2022/05/22.
//

import Foundation
import UIKit


enum selectType: Int {
    case rareType = 750
    case welldoneType = 390
}

class Constants {
    static var isCheckTutorial: Bool = false
    static var isStartAlarm: Bool = false
    /// default: rare
    static var customSecondss: Int = selectType.rareType.rawValue
    static var selectedSeconds: Int = selectType.rareType.rawValue
}




extension UIColor {
    static func RGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return self.RGBA(r: r, g: g, b: b, a: 1)
    }
    
    static func RGBA(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    static func userAlphaColor() -> UIColor {
        return UIColor.RGBA(r: 0, g: 0, b: 0, a: 0.6)
    }
    
    static func customDeepYellow() -> UIColor {
        return UIColor.RGB(r: 245, g: 167, b: 58)
    }
    
    static func customYellow() -> UIColor {
        return UIColor.RGB(r: 246, g: 175, b: 65)
    }
    
    
}


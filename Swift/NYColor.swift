//
//  NYColor.swift
//  NYHealthy
//
//  Created by NiYao on 6/2/16.
//  Copyright © 2016 SuneBearNi. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func colorWithHex(hex:Int) -> UIColor {
        return UIColor.init(red: CGFloat(((hex & 0xFF0000) >> 16)) / 255.0,
                            green: CGFloat(((hex & 0xFF00) >> 8)) / 255.0,
                            blue: CGFloat(hex & 0xFF) / 255.0, alpha: CGFloat(1))
    }
    
    class func colorForAlpha(hex:Int, alpha: CGFloat) -> UIColor {
        return UIColor.init(red: CGFloat(((hex & 0xFF0000) >> 16)) / 255.0,
                            green: CGFloat(((hex & 0xFF00) >> 8)) / 255.0,
                            blue: CGFloat(hex & 0xFF) / 255.0, alpha: alpha)
    }
}
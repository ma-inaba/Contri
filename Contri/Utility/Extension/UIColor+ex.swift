//
//  UIColor+ex.swift
//  Contri
//
//  Created by inaba masaya on 2017/07/30.
//  Copyright © 2017年 inaba masaya. All rights reserved.
//

import UIKit
import Foundation

extension UIColor {
    
    class func contriSkinWhite() -> UIColor{
        return UIColor(red: 251/255, green: 252/255, blue: 243/255, alpha: 1)
    }
    
    class func contriDarkBlue() -> UIColor{
        return UIColor(red: 64/255, green: 69/255, blue: 124/255, alpha: 1)
    }
    // UIntからUIColorを返します　#FFFFFFのように色を指定できるようになります
    class func rgbColor(rgbValue: UInt) -> UIColor{
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

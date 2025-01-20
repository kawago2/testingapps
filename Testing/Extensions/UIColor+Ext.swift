//
//  UIColor+Ext.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import Foundation
import UIKit

extension UIColor {
    func toRGBA() -> String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        // Get the RGBA components from the color
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        // Return a string representation of the color
        return "R: \(Int(red * 255)), G: \(Int(green * 255)), B: \(Int(blue * 255)), A: \(alpha)"
    }
}

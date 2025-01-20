//
//  AppFont.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import Foundation
import UIKit

class AppFont {
    static func titleFont(size: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: size)
    }
    
    static func bodyFont(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }
    
    static func subheadingFont(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .semibold)
    }
    
    static func captionFont(size: CGFloat) -> UIFont {
        return UIFont.italicSystemFont(ofSize: size)
    }
    
    static func customFont(name: String, size: CGFloat) -> UIFont? {
        return UIFont(name: name, size: size)
    }
}

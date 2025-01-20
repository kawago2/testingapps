//
//  Contants.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import Foundation

class Constants {
    static let darkThemeKey = "appTheme"
    
    static var darkTheme: Bool {
        get {
            return UserDefaultsManager.get(darkThemeKey, defaultValue: false) ?? false
        }
        set {
            UserDefaultsManager.set(newValue, forKey: darkThemeKey)
        }
    }
}

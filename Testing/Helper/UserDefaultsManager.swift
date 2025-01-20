//
//  UserDefaultsManager.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import Foundation

class UserDefaultsManager {
    
    // Retrieve the value from UserDefaults using a generic function
    static func get<T>(_ key: String, defaultValue: T? = nil) -> T? {
        return UserDefaults.standard.value(forKey: key) as? T ?? defaultValue
    }
    
    // Save a value to UserDefaults
    static func set<T>(_ value: T, forKey key: String) {
        UserDefaults.standard.setValue(value, forKey: key)
    }
}

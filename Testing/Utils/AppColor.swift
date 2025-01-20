//
//  AppColor.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//
import Foundation
import UIKit

class AppColor {
    static var darkTheme: Bool {
        Constants.darkTheme
    }
    
    static var mainColor: UIColor {
        darkTheme ? .white : .black
    }
    
    static var secondaryColor: UIColor {
        darkTheme ? .black : .white
    }
}


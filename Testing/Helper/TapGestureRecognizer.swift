//
//  TapGestureRecognizer.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import Foundation
import UIKit

// Subclass of UITapGestureRecognizer to store a closure
class TapGestureRecognizer: UITapGestureRecognizer {
    var actionClosure: (() -> Void)?
    
    // Initialize the recognizer with a closure
    init(actionClosure: @escaping () -> Void) {
        self.actionClosure = actionClosure
        super.init(target: nil, action: nil)
    }
}

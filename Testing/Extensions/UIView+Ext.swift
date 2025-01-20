//
//  UIView+Ext.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import Foundation
import UIKit
extension UIView {
    
    // Method to add a tap gesture recognizer with a closure action
    func addTapGesture(action: @escaping () -> Void) {
        let tapGesture = TapGestureRecognizer(actionClosure: action)
        tapGesture.addTarget(self, action: #selector(handleTap))
        self.addGestureRecognizer(tapGesture)
    }
    
    // Handle the tap gesture and call the closure
    @objc private func handleTap(sender: TapGestureRecognizer) {
        sender.actionClosure?()  // Execute the closure
    }
}

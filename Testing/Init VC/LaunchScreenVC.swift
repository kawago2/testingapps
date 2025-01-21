//
//  LaunchScreenVC.swift
//  Testing
//
//  Created by Phincon on 21/01/25.
//

import Foundation
import UIKit

class LaunchScreenVC: UIViewController {
    
    @IBOutlet var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.backgroundColor = AppColor.mainColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        bgView.backgroundColor = AppColor.mainColor
    }
}

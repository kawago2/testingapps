//
//  SplashVC.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import UIKit
import Lottie
import SnapKit

class SplashVC: UIViewController {
    
    private var animationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        startAnimation()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        // Initialize the Lottie animation view
        animationView = LottieAnimationView(name: "helo")
        animationView.contentMode = .scaleAspectFit
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        animationView.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.height.equalTo(200)
        }
    }

    private func startAnimation() {
        // Start the animation
        animationView.play { (finished) in
            if finished {
                self.navigateToMainView()
            }
        }
    }
    
    private func navigateToMainView() {
        let mainViewController = MainVC() // Replace with your main view controller
        mainViewController.modalTransitionStyle = .crossDissolve
        self.view.window?.rootViewController = mainViewController
    }
}

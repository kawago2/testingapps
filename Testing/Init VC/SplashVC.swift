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
        view.backgroundColor = AppColor.mainColor
        
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
        animationView.play { [weak self] (finished) in
            if finished {
                self?.navigateToMainView()
            }
        }
    }
    
    private func navigateToMainView() {
        let vc = MainVC()
        self.navigationController?.setViewControllers([vc], animated: true)
    }

    deinit {
        animationView.stop()
        animationView = nil
    }
}

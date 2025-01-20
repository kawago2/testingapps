//
//  ViewController.swift
//  Testing
//
//  Created by Phincon on 20/01/25.
//

import UIKit
import SnapKit

class MainVC: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Main Screen!!"
        label.textAlignment = .center
        label.font = AppFont.titleFont(size: 24)
        return label
    }()
    
    let buttonView: UIView = {
        let view = UIView()
        view.backgroundColor = AppColor.secondaryColor
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    let buttonLabel: UILabel = {
        let label = UILabel()
        label.text = "Change"
        label.textAlignment = .center
        label.font = AppFont.captionFont(size: 20)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setColor()
        setupViews()
        setupButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Update colors based on theme
        setColor()
    }
    
    func setColor() {
        view.backgroundColor = AppColor.mainColor
        titleLabel.textColor = AppColor.secondaryColor
        buttonView.backgroundColor = AppColor.secondaryColor
        buttonLabel.textColor = AppColor.mainColor
    }
    
    func setupViews() {
        view.addSubview(titleLabel)
        view.addSubview(buttonView)
        buttonView.addSubview(buttonLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        buttonView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.size.equalTo(CGSize(width: 150, height: 50))
            make.centerX.equalToSuperview()
        }
        
        buttonLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    func setupButton() {
        buttonView.addTapGesture {[weak self] in
            guard let self = self else { return }
            Constants.darkTheme = !Constants.darkTheme
            self.setColor()
        }
    }
}

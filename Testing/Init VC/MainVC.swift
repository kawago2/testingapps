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
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }

    func setupViews() {
        view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}


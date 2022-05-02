//
//  DetailViewController.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    var titleLabel = UILabel()
    
    init(userData: UserDataParseable) {
        super.init(nibName: nil, bundle: nil)
        titleLabel.text = userData.data
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureTitleLabel()
    }
    
    private func configureTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

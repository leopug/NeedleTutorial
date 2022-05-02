//
//  ViewController.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import UIKit

class RootViewController: UIViewController {

    private let detailBuilder: DetailComponent
    private let detailButton = UIButton()
    
    init(detailBuilder: DetailComponent) {
        self.detailBuilder = detailBuilder
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureButton()
    }
    
    private func configureButton() {
        view.addSubview(detailButton)
        
        var buttonConfiguration = UIButton.Configuration.bordered()
        buttonConfiguration.title = "Go to Details"
        buttonConfiguration.baseBackgroundColor = .white
        
        detailButton.configuration = buttonConfiguration
        
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        detailButton.addTarget(self, action: #selector(detailButtonTap), for: .touchUpInside)
    }

    @objc
    private func detailButtonTap() {
        present(detailBuilder.detailViewController, animated: true)
    }
}


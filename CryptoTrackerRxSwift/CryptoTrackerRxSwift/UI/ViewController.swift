//
//  ViewController.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 28.02.2025.
//

import UIKit

class ViewController: UIViewController {

    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = String(localized: "Some text")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(titleLabel)

        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}

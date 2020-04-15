//
//  WidgetsGridViewController.swift
//  ContainerVC
//
//  Created by Pedro Vasconcelos on 15/04/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class WidgetsGridViewController: UIViewController {

    // MARK: - Private properties

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Widgets Grid"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange

        configureSubviews()
        setupConstraints()
    }

    // MARK: - Private methods

    private func configureSubviews() {
        view.addSubview(label)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}

//
//  HelloViewController.swift
//  Storyboardless
//
//  Created by Pedro Vasconcelos on 24/03/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    // MARK: - Private properties

    // Views

    private lazy var helloLabel: UILabel = {
        let helloLabel = UILabel()
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.text = "Hello!"
        return helloLabel
    }()

    // MARK: - Init

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController methods

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white

        title = "Welcome"

        configureSubviews()
        setupConstraints()
    }

    // MARK: - Private methods

    private func configureSubviews() {
        view.addSubview(helloLabel)
    }

    private func setupConstraints() {
        helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}

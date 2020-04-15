//
//  WidgetsViewController.swift
//  ContainerVC
//
//  Created by Pedro Vasconcelos on 15/04/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class WidgetsViewController: UIViewController {

    // MARK: - Private properties

    private let widgetsContainerViewController = WidgetsContainerViewController(.list)

    private var isCurrentViewTypeList = true

    // Views

    private lazy var listViewButton: UIBarButtonItem = {
        let listImage = UIImage(systemName: "rectangle.grid.1x2.fill")!
        let button = UIBarButtonItem(image: listImage, style: .plain, target: self, action: #selector(viewTypeToggleButtonTapped(sender:)))
        return button
    }()

    private lazy var gridViewButton: UIBarButtonItem = {
        let gridImage = UIImage(systemName: "square.grid.2x2.fill")!
        let button = UIBarButtonItem(image: gridImage, style: .plain, target: self, action: #selector(viewTypeToggleButtonTapped(sender:)))
        return button
    }()

    // MARK: - Init

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController methods

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Widgets"

        configureSubviews()
        setupConstraints()
    }

    // MARK: - Selectors

    @objc func viewTypeToggleButtonTapped(sender: UIBarButtonItem) {
        if isCurrentViewTypeList {
            widgetsContainerViewController.transition(to: .grid)
            navigationItem.rightBarButtonItem = listViewButton

        } else {
            widgetsContainerViewController.transition(to: .list)
            navigationItem.rightBarButtonItem = gridViewButton
        }

        isCurrentViewTypeList.toggle()
    }

    // MARK: - Private methods

    private func configureSubviews() {
        addChild(widgetsContainerViewController)
        view.addSubview(widgetsContainerViewController.view)
        widgetsContainerViewController.didMove(toParent: self)

        navigationItem.rightBarButtonItem = isCurrentViewTypeList ? gridViewButton : listViewButton
    }

    private func setupConstraints() {
        // When we add a child controller's view, it automatically expands to fill the whole screen.
        // In this particular case that's exactly what we want.
        // If we wanted to size and position this view differently, we could do it like this:
        // widgetsContainerViewController.view.translatesAutoresizingMaskIntoConstraints = false
        // NSLayoutConstraint.activate([
        //    widgetsContainerViewController.view.topAnchor.constraint(equalTo: view.topAnchor),
        //    widgetsContainerViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor),
        //    widgetsContainerViewController.view.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
        //    widgetsContainerViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor)
        // ])
    }

}

//
//  MainCoordinator.swift
//  Storyboardless
//
//  Created by Pedro Vasconcelos on 24/03/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {

    // MARK: - Properties

    let navigationController: UINavigationController

    // MARK: - Private properties

    private let window: UIWindow

    // MARK: - Init

    init(window: UIWindow) {
        self.navigationController = UINavigationController()
        self.window = window
    }

    // MARK: - Methods

    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        let helloCoordinator = HelloCoordinator(navigationController: navigationController)
        helloCoordinator.start()
    }

}

//
//  HelloCoordinator.swift
//  Storyboardless
//
//  Created by Pedro Vasconcelos on 24/03/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class HelloCoordinator {

    // MARK: - Properties

    let navigationController: UINavigationController

    // MARK: - Init

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Methods

    func start() {
        let helloViewController = HelloViewController()
        navigationController.pushViewController(helloViewController, animated: true)
    }
    
}


//
//  WidgetsCoordinator.swift
//  ContainerVC
//
//  Created by Pedro Vasconcelos on 15/04/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class WidgetsCoordinator {

    // MARK: - Properties

    let navigationController: UINavigationController

    // MARK: - Init

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Methods

    func start() {
        let widgetsViewController = WidgetsViewController()
        navigationController.pushViewController(widgetsViewController, animated: true)
    }

}

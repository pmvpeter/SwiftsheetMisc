//
//  StartupCoordinator.swift
//  ContainerVC
//
//  Created by Pedro Vasconcelos on 15/04/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class StartupCoordinator: Coordinator {

    // MARK: Properties

    let navigationController = UINavigationController()
    
    // MARK: Private properties

    private let window: UIWindow

    // MARK: Init

    init(window: UIWindow) {
        self.window = window
    }

    // MARK: Methods

    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        let widgetsCoordinator = WidgetsCoordinator(navigationController: navigationController)
        widgetsCoordinator.start()
    }

}


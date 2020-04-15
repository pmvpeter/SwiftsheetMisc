//
//  WidgetsContainerViewController.swift
//  ContainerVC
//
//  Created by Pedro Vasconcelos on 15/04/2020.
//  Copyright © 2020 PMV Peter. All rights reserved.
//

import UIKit

class WidgetsContainerViewController: UIViewController {

    // MARK: - Properties

    enum State {
        case list
        case grid
    }

    // MARK: - Private properties

    private let containedViewControllers: [State: UIViewController] = [
        .list: WidgetsListViewController(),
        .grid: WidgetsGridViewController()
    ]

    private var currentState: State

    // MARK: - Init

    init(_ initialState: State) {
        currentState = initialState
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        transition(to: currentState)
    }

    // MARK: - Methods

    func transition(to state: State) {
        // Remove current vc
        let currentVc = containedViewControllers[currentState]
        if currentVc?.parent != nil {
            currentVc?.willMove(toParent: nil)
            currentVc?.view.removeFromSuperview()
            currentVc?.removeFromParent()
        }

        // Add new vc
        guard let newVc = containedViewControllers[state] else { return }
        currentState = state
        addChild(newVc)
        view.addSubview(newVc.view)
        newVc.didMove(toParent: self)
    }

}


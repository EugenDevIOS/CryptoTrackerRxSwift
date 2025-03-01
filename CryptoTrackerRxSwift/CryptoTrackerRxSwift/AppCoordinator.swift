//
//  AppCoordinator.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 01.03.2025.
//

import UIKit

class AppCoordinator: BaseCoordinator {

    let window: UIWindow

    init(window: UIWindow, router: Routable) {
        self.window = window
        super.init(router: router)
    }

    func start() {
        let viewController = ViewController()
        let rootViewController = UINavigationController(rootViewController: viewController)

        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }

}

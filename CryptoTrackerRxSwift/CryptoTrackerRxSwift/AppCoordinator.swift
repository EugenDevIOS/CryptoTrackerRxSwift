//
//  AppCoordinator.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 01.03.2025.
//

import UIKit

final class AppCoordinator: BaseCoordinator {

    let window: UIWindow

    init(window: UIWindow, router: Routable) {
        self.window = window
        super.init(router: router)
    }

    override func start() {
        let viewController = UIViewController()
        viewController.title = String(localized: "Crypto Tracker")

        router.presentViewController(viewController, navigationStyle: .push, animated: false)

        window.backgroundColor = .systemBackground
        window.rootViewController = router.navigationController
        window.makeKeyAndVisible()
    }

}

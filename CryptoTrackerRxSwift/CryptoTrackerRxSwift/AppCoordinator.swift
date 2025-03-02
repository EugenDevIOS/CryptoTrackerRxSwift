//
//  AppCoordinator.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 01.03.2025.
//

import UIKit

final class AppCoordinator: BaseCoordinator {

    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
        super.init(router: Router(navigationController: UINavigationController()))
    }

    func start() {
        let viewController = UIViewController()
        viewController.title = String(localized: "Crypto Tracker")

        router.presentViewController(viewController, navigationStyle: .push, animated: false)

        window.rootViewController = router.navigationController
        window.makeKeyAndVisible()
    }

}

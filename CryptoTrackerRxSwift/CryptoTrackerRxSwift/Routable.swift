//
//  Routable.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 01.03.2025.
//

import UIKit

public enum NavigationStyle {
    case push
    case modal(transitionStyle: UIModalTransitionStyle?, completion: (() -> Void)?)

    static let modalDefault: NavigationStyle = .modal(transitionStyle: nil, completion:nil)
}

public protocol Routable: AnyObject {
    var navigationController: UINavigationController { get }

    func presentViewController(_ viewController: UIViewController, navigationStyle: NavigationStyle, animated: Bool)
}

public class Router: Routable {

    public let navigationController: UINavigationController

    private(set) var rootViewController: UIViewController?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func presentViewController(_ viewController: UIViewController, navigationStyle: NavigationStyle, animated: Bool = true) {
        switch navigationStyle {
        case .push:
            navigationController.pushViewController(viewController, animated: animated)
        case let .modal(transitionStyle, completion):
            if let transitionStyle {
                viewController.modalTransitionStyle = transitionStyle
            }
            navigationController.present(viewController, animated: animated, completion: completion)
        }
    }

}

//
//  Routable.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 01.03.2025.
//

import UIKit

public enum NavigationStyle {
    case push
}

/// Интерфейс роутер для системы координаторов
public protocol Routable: AnyObject {
    func presentViewController(_ viewController: UIViewController, navigationStyle: NavigationStyle, animated: Bool)
//    func pushModule(_ module: Presentable, transition: Transition?, ....)
//    func setRootModule(_ module: Presentable, transition: Transition?, ...)
//    func popModule(transition: Transition?, animated: Bool, completion: (() -> Void)?)
//    func popToRootModule(animated: Bool, completion: (() -> Void)?)
//
//    func presentModule(_ module: Presentable, ....)
//    func dismissModule(animated: Bool, completion: (() -> Void)?)
//    func closeModule(animated: Bool, transition transitionIfCan: Transition?, ...)
//
//    func subscribe(_ listener: LifeCycleListener)
}

public class Router: Routable {

    public let rootNavigationController: UINavigationController

    private(set) var rootViewController: UIViewController?

    init(rootNavigationController: UINavigationController) {
        self.rootNavigationController = rootNavigationController
    }

    public func presentViewController(_ viewController: UIViewController, navigationStyle: NavigationStyle, animated: Bool = true) {
        switch navigationStyle {
        case .push:
            rootNavigationController.pushViewController(viewController, animated: animated)
        }
    }

}

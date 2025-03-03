//
//  BaseCoordinator.swift
//  CryptoTrackerRxSwift
//
//  Created by Eugene Klyuenkov on 01.03.2025.
//

import Foundation

/// Базовый класс для координатора
open class BaseCoordinator {

    public let router: Routable

    private weak var parentCoordinator: BaseCoordinator?
    private var childCoordinators: [BaseCoordinator] = []

    public init(router: Routable, parent: BaseCoordinator? = nil) {
        self.parentCoordinator = parent
        self.router = router
    }

    public func start() {
        fatalError("\(type(of: self)) is abstract!")
    }

    public func addChild(_ child: BaseCoordinator) {
        childCoordinators.append(child)
    }

    public func removeChild(_ child: BaseCoordinator) {
        childCoordinators.removeAll(where: { $0 === child })
    }

}

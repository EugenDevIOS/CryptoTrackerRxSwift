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

    public private(set) var countUnits: Int = 0 {
        didSet {
            assert(countUnits >= 0, "Что-то пошло не так!")
            if countUnits == 0 { parentCoordinator?.removeChild(self) }
        }
    }

//    private let listener = DefaultLifeCycleListener()

    private weak var parentCoordinator: BaseCoordinator?
    private var childCoordinators: [BaseCoordinator] = []

    public init(router: Routable, parent: BaseCoordinator? = nil) {
        self.parentCoordinator = parent
        self.router = router
        //        self.router.subscribe(listener)
        //        self.listener.recieveEvent = { ... }
    }

    public func addChild(_ child: BaseCoordinator) {
        childCoordinators.append(child)
    }

    public func removeChild(_ child: BaseCoordinator) {
        childCoordinators.removeAll(where: { $0 === child })
    }

}

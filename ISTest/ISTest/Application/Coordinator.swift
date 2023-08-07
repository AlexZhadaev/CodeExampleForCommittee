//
//  Coordinator.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 26.02.2023.
//

import UIKit

protocol Coordinator: AnyObject {
    
    var navigationController: UINavigationController { get }
    var coordinators: [Coordinator] { get set }

    func start()
}

extension Coordinator {
    func removeChildCoordinator(_ coordinator: Coordinator) {
        guard let index = coordinators.firstIndex(where: { $0 === coordinator }) else { return }
        coordinators.remove(at: index)
    }
}

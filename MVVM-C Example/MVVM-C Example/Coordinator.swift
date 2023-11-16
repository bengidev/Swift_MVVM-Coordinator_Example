//
//  Coordinator.swift
//  MVVM-C Example
//
//  Created by Bambang Tri Rahmat Doni on 16/11/23.
//

import Foundation

class Coordinator {
    private(set) var childCoordinators = [Coordinator]()
    
    func start() -> Void {
        preconditionFailure("This method needs to be overriden by concrete subclass.")
    }
    
    func finish() -> Void {
        preconditionFailure("This method needs to be overriden by concrete subclass.")
    }
    
    func addChildCoordinator(_ coordinator: Coordinator) -> Void {
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(_ coordinator: Coordinator) -> Void {
        if let index = childCoordinators.firstIndex(of: coordinator) {
            childCoordinators.remove(at: index)
        } else {
            print("Couldn't remove coordinator: \(coordinator). It's not a child coordinator.")
        }
    }
    
    func removeAllChildCoordinatorsWith<T>(type: T.Type) -> Void {
        childCoordinators = childCoordinators.filter { $0 is T == false }
    }
    
    func removeAllChildCoordinators() -> Void {
        childCoordinators.removeAll()
    }
}

extension Coordinator: Equatable {
    static func == (lhs: Coordinator, rhs: Coordinator) -> Bool {
        return lhs === rhs
    }
}

//
//  AppCoordinator.swift
//  MVVM-C Example
//
//  Created by Bambang Tri Rahmat Doni on 16/11/23.
//

import Foundation
import UIKit

class SceneCoordinator: Coordinator {
    // MARK: Properties
    let window: UIWindow?
    let viewController: UIViewController?
    
    private lazy var rootViewController: UINavigationController = {
        if let viewController = viewController {
            return UINavigationController(rootViewController: viewController)
        } else {
            return UINavigationController(rootViewController: UIViewController())
        }
    }()
    
    // MARK: Coordinator
    internal init(window: UIWindow? = nil, viewController: UIViewController? = nil) {
        self.window = window
        self.viewController = viewController
    }
    
    override func start() {
        guard let window = window else { return }
        
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }   
}

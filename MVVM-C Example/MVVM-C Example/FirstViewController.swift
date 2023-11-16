//
//  ViewController.swift
//  MVVM-C Example
//
//  Created by Bambang Tri Rahmat Doni on 16/11/23.
//

import UIKit

final class FirstViewController: UIViewController {
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }

    // MARK: Additional Functions
    private func configureView() -> Void {
        self.view.backgroundColor = .systemBackground
    }
}


//
//  SecondViewController.swift
//  MVVM-C Example
//
//  Created by Bambang Tri Rahmat Doni on 16/11/23.
//

import UIKit

final class SecondViewController: UIViewController {

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.view.backgroundColor = .systemOrange
    }

}

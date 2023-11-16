//
//  ViewController.swift
//  MVVM-C Example
//
//  Created by Bambang Tri Rahmat Doni on 16/11/23.
//

import UIKit

final class FirstViewController: UIViewController {
    
    // MARK: UI
    private lazy var stackView: UIStackView = {
        let vw = UIStackView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.spacing = 5
        vw.axis = .vertical
        
        return vw
    }()
    
    private lazy var secondViewButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Second View", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.addTarget(self, action: #selector(self.secondViewPressed(_:)), for: .touchUpInside)
        
        return btn
    }()
    
    // MARK: Lifecycles
    override func loadView() {
        super.loadView()
        
        configureSubViews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.view.backgroundColor = .systemBackground
    }
    
    // MARK: Additional Functions
    private func configureSubViews() -> Void {
        self.view.addSubview(self.stackView)
        self.stackView.addArrangedSubview(self.secondViewButton)
        
        NSLayoutConstraint.activate([
            self.stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.stackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.stackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            self.stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5),
        ])
    }
    
    @objc private func secondViewPressed(_ sender: UIButton) -> Void {
        let viewController = SecondViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}


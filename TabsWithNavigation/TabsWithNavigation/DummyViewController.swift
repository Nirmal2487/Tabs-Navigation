//
//  DummyViewController.swift
//  TabsWithNavigation
//
//  Created by Nirmal Patel on 2018-10-09.
//  Copyright © 2018 Nirmal Patel. All rights reserved.
//

import UIKit

class DummyViewController: UIViewController {

    var index: Int = 0
    
    private lazy var button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tab \(index)", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let color: UIColor
        switch index {
        case 1:
            color = .red
        case 2:
            color = .green
        default:
            color = .blue
        }
        view.backgroundColor = color
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let tabVC = self.tabBarController as? ParentTabBarController {
            print(tabVC.lastSelectedTab)
            tabVC.lastSelectedTab = index
        }
    }
}

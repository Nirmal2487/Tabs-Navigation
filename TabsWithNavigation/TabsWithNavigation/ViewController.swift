//
//  ViewController.swift
//  TabsWithNavigation
//
//  Created by Nirmal Patel on 2018-10-09.
//  Copyright © 2018 Nirmal Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginTapped(_ sender: UIButton) {
        let tabBarController = ParentTabBarController()
        
        let vc1 = DummyViewController()
        vc1.index = 1
        vc1.tabBarItem = UITabBarItem(title: "VC1", image: nil, selectedImage: nil)
        
        let vc2 = DummyViewController()
        vc2.index = 2
        vc2.tabBarItem = UITabBarItem(title: "VC2", image: nil, selectedImage: nil)
        
        let vc3 = DummyViewController()
        vc3.index = 3
        vc3.tabBarItem = UITabBarItem(title: "VC3", image: nil, selectedImage: nil)
        
        tabBarController.setViewControllers([vc1, vc2, vc3], animated: true)
        
        navigationController?.pushViewController(tabBarController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


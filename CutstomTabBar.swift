//
//  CutstomTabBar.swift
//  avenueproperties
//
//  Created by Alex Beattie on 9/28/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeController = HomeViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: homeController)
        navigationController.title = "Home"
        
        let allListingsMapVC = AllListingsMapVC()
        let allListingsNavigationController = UINavigationController(rootViewController: allListingsMapVC)
        allListingsNavigationController.title = "All Listings"
        
        viewControllers = [navigationController, allListingsNavigationController]
       
        tabBar.isTranslucent = false
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true

    }
}


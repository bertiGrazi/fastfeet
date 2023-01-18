//
//  FFMainTabBar.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import UIKit

class FFMainTabViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
        setUpTabs()
        setupTabBarAppearance()
    }
    
    private func setUpTabs() {
        let pendingVC = FFPendingViewController()
        let deliveredVC = FFDeliveredViewController()
        
        pendingVC.navigationItem.largeTitleDisplayMode = .always
        deliveredVC.navigationItem.largeTitleDisplayMode = .always
        
        
        let nav1 = UINavigationController(rootViewController: pendingVC)
        let nav2 = UINavigationController(rootViewController: deliveredVC)
        
        nav1.tabBarItem = UITabBarItem(
            title: FFMainTabStrings.pendingVCTtile.localized(),
            image: UIImage(systemName: "exclamationmark.triangle"),
            tag: 1
        )
        nav2.tabBarItem = UITabBarItem(
            title: FFMainTabStrings.deliveredVCTtile.localized(),
            image: UIImage(systemName: "checkmark.rectangle.portrait.fill"),
            tag: 1
        )
        
        for nav in [nav1, nav2] {
            nav.navigationBar.prefersLargeTitles = true
            nav.navigationBar.backgroundColor = .backgroundColor
            nav.navigationBar.isTranslucent = false
        }
        
        setViewControllers([ nav1, nav2 ], animated: true)
    }
    
    fileprivate func setupTabBarAppearance() {
        UITabBar.appearance().backgroundColor = .backgroundLightColor
        
        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()

        tabBarItemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.baseTextFastFeetColor]
        tabBarItemAppearance.normal.iconColor = .baseTextFastFeetColor
        
        tabBarItemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.backgroundColor]
        tabBarItemAppearance.selected.iconColor = .backgroundColor
        
        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance

        tabBar.standardAppearance = tabBarAppearance
        
        UITabBar.appearance().backgroundColor = .whiteFastFeetColor
    }
}

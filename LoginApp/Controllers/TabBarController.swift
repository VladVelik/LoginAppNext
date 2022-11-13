//
//  TabBarController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 13.11.2022.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapBarAppearance = UITabBarAppearance()
        tapBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tapBarAppearance
        tabBar.scrollEdgeAppearance = tapBarAppearance
    }
}

//
//  GFTabBarController.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 20/03/26.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        self.viewControllers            = [
            createSearchNavigationController(),
            createFavoritesNavigationController()
        ]
    }
    
    
    func createSearchNavigationController() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoritesVC         = FavoritesListViewController()
        favoritesVC.title       = "Favorites"
        favoritesVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
}

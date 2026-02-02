//
//  SceneDelegate.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 02/02/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
    }
    
    
    func createSearchNavigationController() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createTabBar() -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = [
            createSearchNavigationController(),
            createFavoritesNavigationController()
        ]
        
        return tabbar
    }
    
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoritesVC = FavoritesListViewController()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
    

    func sceneDidDisconnect(_ scene: UIScene) {

    }
    

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
    

    func sceneWillResignActive(_ scene: UIScene) {
        
    }
    

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }
    

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }
}


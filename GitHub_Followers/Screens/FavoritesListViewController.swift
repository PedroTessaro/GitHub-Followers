//
//  FavoritesListViewController.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 02/02/26.
//

import UIKit

class FavoritesListViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}

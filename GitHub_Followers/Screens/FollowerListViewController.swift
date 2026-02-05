//
//  FollowerListViewController.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 04/02/26.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor                                    = .systemBackground
        navigationController?.isNavigationBarHidden             = false
        navigationController?.navigationBar.prefersLargeTitles  = true
    }
}

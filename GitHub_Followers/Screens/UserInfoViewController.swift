//
//  UserInfoViewController.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 10/02/26.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissViewController))
        navigationItem.rightBarButtonItem = doneButton
        print(username as Any)
    }
    
    
    @objc
    private func dismissViewController() {
        dismiss(animated: true)
    }
}

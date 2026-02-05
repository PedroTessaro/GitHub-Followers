//
//  FollowerCell.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 05/02/26.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    
    let avatarImageView = UIImageView()
    let usernameLabel   = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
}

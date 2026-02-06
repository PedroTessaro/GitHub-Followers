//
//  Follower.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 05/02/26.
//

import Foundation

nonisolated struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}

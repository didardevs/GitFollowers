//
//  User.swift
//  GitFollowers
//
//  Created by Didar Naurzbayev on 2/2/20.
//  Copyright © 2020 Didar Naurzbayev. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var name: String?
    var avatarUrl: String
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var followers: Int
    var following: Int
    var createdAt: String
    var updatedAt: String
    
}

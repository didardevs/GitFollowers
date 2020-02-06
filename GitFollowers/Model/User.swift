//
//  User.swift
//  GitFollowers
//
//  Created by Didar Naurzbayev on 2/2/20.
//  Copyright © 2020 Didar Naurzbayev. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    var name: String?
    let avatarUrl: String
    var location: String?
    var bio: String?
    var publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let followers: Int
    let following: Int
    let createdAt: Date
    let updatedAt: Date
    
}

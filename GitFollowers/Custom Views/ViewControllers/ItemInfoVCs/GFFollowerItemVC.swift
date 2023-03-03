//
//  GFFollowerItemVC.swift
//  GitFollowers
//
//  Created by Didar Naurzbayev on 2/3/20.
//  Copyright © 2020 Didar Naurzbayev. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(color: .systemGreen, title: "Get Followers", systemImageName: "person.3")
    }

    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}

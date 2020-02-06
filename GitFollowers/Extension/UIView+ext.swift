//
//  UIView+ext.swift
//  GitFollowers
//
//  Created by Didar Naurzbayev on 2/6/20.
//  Copyright © 2020 Didar Naurzbayev. All rights reserved.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}

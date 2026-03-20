//
//  UIScreen+Ext.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 20/03/26.
//

import UIKit

extension UIScreen {
    static var current: UIScreen? {
        UIWindow.current?.screen
    }
}

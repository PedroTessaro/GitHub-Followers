//
//  Constants.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 11/02/26.
//

import UIKit

enum SFSymbols {
    static let location     = "mappin.and.ellipse"
    static let repos        = "folder"
    static let gists        = "text.alignleft"
    static let followers    = "heart"
    static let following    = "person.2"
}

enum ScreenSize {
    static let width        = UIScreen.current?.bounds.size.width
    static let height       = UIScreen.current?.bounds.size.height
    static let maxLength    = max(ScreenSize.width ?? 0, ScreenSize.height ?? 0)
    static let minLength    = min(ScreenSize.width ?? 0, ScreenSize.height ?? 0)
}

enum DeviceTypes {
    static let idiom                    = UIDevice.current.userInterfaceIdiom
    static let nativeScale              = UIScreen.current?.nativeScale
    static let scale                    = UIScreen.current?.scale
    
    static let isiPhoneSE               = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed          = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale ?? 0 > scale ?? 0
    static let isiPhone8PlusStandard    = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale ?? 0 < scale ?? 0
    static let isiPhone8PlusZoomed      = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhoneX                = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr       = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad                   = idiom == .pad && ScreenSize.maxLength >= 1024.0

    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}

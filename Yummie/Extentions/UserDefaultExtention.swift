//
//  UserDefaultExtention.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 23.03.2023.
//

import Foundation

extension UserDefaults
{
    private enum UserDefaultsKeys : String
    {
        case hasOnboarded
    }
    var hasOnboarded: Bool
    {
        get{
            bool(forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
        set
        {
            setValue(newValue, forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
    }
}

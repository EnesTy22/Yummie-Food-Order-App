//
//  StringExtention.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 16.03.2023.
//

import Foundation

extension String
{
    var asUrl : URL?
    {
        return URL(string : self)
    }
}

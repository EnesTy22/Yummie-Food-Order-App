//
//  DishCategory.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 16.03.2023.
//

import Foundation

struct DishCategory:Decodable
{
    let id,name,image :String?
    enum CodingKeys:String,CodingKey{
        case id
        case name = "title"
        case image
    }
}

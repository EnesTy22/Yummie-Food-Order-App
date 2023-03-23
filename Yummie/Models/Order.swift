//
//  Order.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 19.03.2023.
//

import Foundation

struct Order:Decodable{
    let id : String?
    let name : String?
    let dish : Dish?
}

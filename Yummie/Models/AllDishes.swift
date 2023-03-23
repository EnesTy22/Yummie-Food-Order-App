//
//  AllDishes.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 22.03.2023.
//

import Foundation
struct AllDishes: Decodable
{
    let categories:[DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}

//
//  Dish.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 17.03.2023.
//

import Foundation
struct Dish
{
    let id,name,description,image : String?
    let calories: Int?
    var formattedCalories : String
    {
        return "\(calories ?? 0) calories"
        //return String(format:"%.2f calories",calories ?? 0 )
    }
}

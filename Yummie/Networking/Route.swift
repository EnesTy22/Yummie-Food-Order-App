//
//  Route.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 19.03.2023.
//

import Foundation
enum Route
{
    static let baseUrl = "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
    case fetchCategoryDishes(String)
    case fetchOrders
    
    var description : String
    {
        switch self{
        case .fetchAllCategories:
            return "/dish-categories"
        case .placeOrder(let dishId):
            return "/orders/\(dishId)"
        case .fetchCategoryDishes(let categoryID):
            return "/dishes/\(categoryID)"
        case .fetchOrders:
            return "/orders"
        }
    }
}

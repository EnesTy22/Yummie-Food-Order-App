//
//  ApiResponse.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 22.03.2023.
//

import Foundation

struct ApiResponse<T:Decodable>:Decodable
{
    let status : Int
    let message :String?
    let data : T?
    let error:String?
}

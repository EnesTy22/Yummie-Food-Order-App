//
//  AppError.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 20.03.2023.
//

import Foundation
enum AppError:LocalizedError
{
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription:String?
    {
        switch self {
            
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "Bruhhh !! I have no idea what go on"
        case .invalidUrl:
            return "Heyy give me a valid Url"
        case . serverError(let error):
            return error
        }
    }
}

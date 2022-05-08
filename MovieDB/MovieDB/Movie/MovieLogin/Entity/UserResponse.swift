//
//  UserResponse.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

struct UserResponse :   Codable
{
    public var username  :   String?
    public var password  :   String?
    
    enum CodingKeys  :   String, CodingKey
    {
        case username   =   "username"
        case password   =   "password"
    }
}

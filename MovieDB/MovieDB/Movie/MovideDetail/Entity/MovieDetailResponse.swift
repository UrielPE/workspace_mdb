//
//  MovieDetailResponde.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

struct MovieDetailResponse
{
    public var message  :   String?
    
    enum CodingKeys  :   String, CodingKey
    {
        case message   =   "message"
    }
}

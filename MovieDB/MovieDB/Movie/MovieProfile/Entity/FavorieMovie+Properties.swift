//
//  FavorieMovie+Properties.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation
import CoreData

extension UserFavoriteMovie
{
    @nonobjc public class func getFavoriteMovies() -> NSFetchRequest<UserFavoriteMovie> {
        NSFetchRequest<UserFavoriteMovie>(entityName: "UserFavoriteMovie")
    }
}

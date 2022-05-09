//
//  MovieDetailViewController_Actions+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

extension MovieDetailViewController
{
    @objc func addFavoriteMovie()
    {
        if let movie    =   self.movie {
            self.presenter?.saveFavoriteMovie(model: movie)
        }
    }
}

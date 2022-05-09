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
        if
            let movie       =   self.movie,
            let imageData   =   self.movieImage.image?.pngData()
        {
            let newMovie    =   MovieDetailRequest(
                id      : UserDefaults.standard.string(forKey: "username"),
                title   : movie.title,
                overview: movie.overview,
                image   : imageData)
            
            self.present(indicatorView, animated: true) {
                self.presenter?.saveFavoriteMovie(model: newMovie)
            }
        }
    }
}

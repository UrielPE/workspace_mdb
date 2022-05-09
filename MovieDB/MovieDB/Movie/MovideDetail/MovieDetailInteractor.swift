//
//  MovieDetailPresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

class MovieDetailInteractor
{
    public weak var presenter : MovieDetailInteractorToPresenter?
    
    init() {
        //Empty constructor
    }
}

extension MovieDetailInteractor :   MovieDetailPresenterToInteractor
{
    func saveFavoriteMovie(model arg: Movie)
    {
        
    }
}

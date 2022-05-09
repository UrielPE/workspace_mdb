//
//  MovieProfilePresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

class MovieProfilePresenter
{
    public weak var view    :   MovieProfilePresenterToViewController?
    public var interactor   :   MovieProfilePresenterToInteractor?
    public var router       :   MovieProfileRouter?
    
    init(){
        //Empty constructor
    }
}

extension MovieProfilePresenter :   MovieProfileViewControllerToPresenter
{
    func getMovies() {
        self.interactor?.getMovies()
    }
}

extension MovieProfilePresenter :   MovieProfileInteractorToPresenter
{
    func successFavoriteMovies( model arg   : [UserFavoriteMovie] )
    {
        if !arg.isEmpty
        {
            var movies  :   [Movie] =   []
            
            arg.forEach { movie in
                movies.append(
                    Movie(
                        id              : 0,
                        title           : "",
                        popularity      : 0,
                        voteCount       : 0,
                        originalTitle   : movie.title,
                        voteAverage     : 0,
                        overview        : movie.overview,
                        releaseDate     : "",
                        posterPath      : movie.poster
                    )
                )
            }
            
            self.view?.successFavoriteMovies(model: movies)
        }
        
        else {
            self.view?.successFavoriteMovies(model: [])
        }
    }
    
    func failureFavoriteMovies( message arg : String ) {
        self.view?.failureFavoriteMovies(message: arg)
    }
}



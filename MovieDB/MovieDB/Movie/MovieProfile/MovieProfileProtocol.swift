//
//  MovieDetailProtocol.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

protocol MovieProfileViewControllerToPresenter   :   AnyObject
{
    func getMovies()
}

protocol MovieProfileInteractorToPresenter       :   AnyObject
{
    func successFavoriteMovies( model arg   : [UserFavoriteMovie] )
    func failureFavoriteMovies( message arg : String )
}

protocol MovieProfilePresenterToViewController   :   AnyObject
{
    func successFavoriteMovies( model arg   : [Movie] )
    func failureFavoriteMovies( message arg : String )
}

protocol MovieProfilePresenterToInteractor       :   AnyObject
{
    func getMovies()
}

protocol MovieProfilePresenterToRouter           :   AnyObject
{
    
}

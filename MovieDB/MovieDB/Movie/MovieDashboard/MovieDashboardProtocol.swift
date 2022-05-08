//
//  MovieDashboardProtocol.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

protocol MovieDashboardViewControllerToPresenter    :   AnyObject
{
    func logOut()
    
    func getMovies()
}

protocol MovieDashboardInteractorToPresenter        :   AnyObject
{

    func successGetMovies( model arg : MovieResponse )
    func failureGetMovies()
}

protocol MovieDashboardPresenterToViewController    :   AnyObject
{
    func successGetMovies( model arg : MovieResponse )
    func failureGetMovies()
}

protocol MovieDashboardPresenterToInteractor        :   AnyObject
{
    func getMovies()
}

protocol MovieDashboardPresenterToRouter            :   AnyObject
{
    func logOut()
}

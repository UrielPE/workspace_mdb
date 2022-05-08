//
//  MovieDashboardPresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

class MovieDashboardPresenter
{
    public weak var view    :   MovieDashboardPresenterToViewController?
    public var interactor   :   MovieDashboardPresenterToInteractor?
    public var router       :   MovieDashboardPresenterToRouter?
    
    init() {
        //Empty constructor
    }
}

extension MovieDashboardPresenter   :   MovieDashboardViewControllerToPresenter
{
    func showProfile() {
        self.router?.showProfile()
    }
    
    func showMovieDetail( model arg : Movie ){
        self.router?.showMovieDetail(model: arg)
    }

    func getMovies() {
        self.interactor?.getMovies()
    }
    
    func logOut() {
        self.router?.logOut()
    }
}


extension MovieDashboardPresenter   :   MovieDashboardInteractorToPresenter
{
    func successGetMovies(model arg: MovieResponse)
    {
        self.view?.successGetMovies(model: arg)
    }
    
    func failureGetMovies()
    {
        self.view?.failureGetMovies()
    }
}

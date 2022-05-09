//
//  MovieDetailPresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

class MovieDetailPresenter
{
    public weak var view    :   MovieDetailPresenterToViewController?
    public var interactor   :   MovieDetailPresenterToInteractor?
    public var router       :   MovieDetailPresenterToRouter?
    
    init() {
        //Empty constructor
    }
}

extension MovieDetailPresenter  :   MovieDetailViewControllerToPresenter
{
    func saveFavoriteMovie(model arg: MovieDetailRequest) {
        self.interactor?.saveFavoriteMovie(model: arg)
    }
}

extension MovieDetailPresenter  :   MovieDetailInteractorToPresenter
{
    func successSaveFavoriteMovie( model arg    :   MovieDetailResponse ) {
        self.view?.successSaveFavoriteMovie(model: arg)
    }
    
    func failureSaveFavoriteMovie( message arg  :   MovieDetailResponse) {
        self.view?.failureSaveFavoriteMovie(message: arg)
    }
}

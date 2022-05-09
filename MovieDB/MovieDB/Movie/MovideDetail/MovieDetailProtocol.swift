//
//  MovieDetailProtocol.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

protocol MovieDetailViewControllerToPresenter   :   AnyObject
{
    func saveFavoriteMovie( model arg : Movie )
}

protocol MovieDetailInteractorToPresenter       :   AnyObject
{
    func successSaveFavoriteMovie( model arg    :   MovieDetailResponse )
    func failureSaveFavoriteMovie( message arg  :   MovieDetailResponse)
}

protocol MovieDetailPresenterToViewController   :   AnyObject
{
    func successSaveFavoriteMovie( model arg    :   MovieDetailResponse )
    func failureSaveFavoriteMovie( message arg  :   MovieDetailResponse)
}

protocol MovieDetailPresenterToInteractor       :   AnyObject
{
    func saveFavoriteMovie( model arg : Movie )
}

protocol MovieDetailPresenterToRouter           :   AnyObject
{
    
}

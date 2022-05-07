//
//  MovieLoginPresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 07/05/22.
//

import Foundation

class MovieLoginPresenter
{
    internal weak var view    :   MovieLoginPresenterToViewController?
    internal var interactor   :   MovieLoginPresenterToInteractor?
    internal var router       :   MovieLoginPresenterToRouter?
    
    init() {
        //Empty constructor
    }
}

extension MovieLoginPresenter   :   MovieLoginViewControllerToPresenter
{
    
}

extension MovieLoginPresenter   :   MovieLoginInteractorToPresenter
{
    
}

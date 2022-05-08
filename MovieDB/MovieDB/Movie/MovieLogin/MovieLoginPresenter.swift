//
//  MovieLoginPresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
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
    func goToDashboard()
    {
        self.router?.goToDashboard()
    }
    
    func signIn(model arg: UserRequest)
    {
        if
            let username = arg.username,
            let password = arg.password,
            
            username.isEmpty || password.isEmpty
        {
            self.view?.failureSignIn(messge: "Inavalid username and/or password: You did not provide a valid login")
        }
        
        else {
            self.interactor?.signIn(model: arg)
        }
    }
}

extension MovieLoginPresenter   :   MovieLoginInteractorToPresenter
{
    func successSignIn( model arg  : UserResponse )
    {
        self.view?.successSignIn(model: arg)
    }
    
    func failureSignIn( messge arg : String )
    {
        self.view?.failureSignIn(messge: arg)
    }
}

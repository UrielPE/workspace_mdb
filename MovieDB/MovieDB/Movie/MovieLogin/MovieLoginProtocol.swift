//
//  MovieLoginProtocol.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

protocol MovieLoginViewControllerToPresenter    :  AnyObject
{
    func signIn( model arg : UserRequest )
    
    func goToDashboard()
}

protocol MovieLoginInteractorToPresenter        :   AnyObject
{
    func successSignIn( model arg  : UserResponse )
    func failureSignIn( messge arg : String )
}

protocol MovieLoginPresenterToViewController    :   AnyObject
{
    func successSignIn( model arg  : UserResponse )
    func failureSignIn( messge arg : String )
}

protocol MovieLoginPresenterToInteractor        :   AnyObject
{
    func signIn( model arg : UserRequest )
}

protocol MovieLoginPresenterToRouter            :   AnyObject
{
    func goToDashboard()
}

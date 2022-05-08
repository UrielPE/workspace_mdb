//
//  MovieLoginInteractor.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

class MovieLoginInteractor  :   MovieLoginPresenterToInteractor
{
    public weak var presenter    :   MovieLoginInteractorToPresenter?
    
    init() {
        //Empty constructor
    }
    
    func signIn(model arg: UserRequest)
    {
        if
            let username = arg.username,
            let password = arg.password,
            
            username == "uriel@moviedb.com" && password == "12345678"
        {
            self.presenter?.successSignIn(
                model: UserResponse(
                    username: "uriel@moviedb.com", password: "12345678")
            )
        }
        
        else {
            self.presenter?.failureSignIn(messge: "Inavalid username and/or password: You did not provide a valid login")
        }
    }
}

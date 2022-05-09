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
    
    private var username    :   String?
    private var password    :   String?
    
    init() {
        //Empty constructor
    }
    
    func signIn(model arg: UserRequest)
    {
        if
            let username = arg.username,
            let password = arg.password,
            
            let username_   =   Bundle.main.infoDictionary?["MV_USER"] as? String,
            let password_   =   Bundle.main.infoDictionary?["MV_PASS"] as? String,
            
            username == username_ && password == password_
        {
            self.presenter?.successSignIn(
                model: UserResponse(
                    username: username_, password: password_)
            )
        }
        
        else {
            self.presenter?.failureSignIn(messge: "Inavalid username and/or password: You did not provide a valid login")
        }
    }
}

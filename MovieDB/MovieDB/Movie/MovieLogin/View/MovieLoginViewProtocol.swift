//
//  MovieLoginViewProtocol.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

protocol MovieLoginInnerViewToParentView        :   AnyObject
{
    func signIn( model arg : UserRequest )
}

protocol MovieLoginParentViewToInnerView        :   AnyObject
{
    func showMessage( message arg : String )
}

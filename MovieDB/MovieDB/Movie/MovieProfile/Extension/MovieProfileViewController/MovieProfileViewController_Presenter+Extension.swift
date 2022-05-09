//
//  MovieProfileViewController.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

extension MovieProfileViewController    :   MovieProfilePresenterToViewController
{
    func successFavoriteMovies( model arg   : [Movie] ) {
        self.containerView.listOfMovies    =   arg
    }
    
    func failureFavoriteMovies( message arg : String ) {
        self.showMessage(title : NSLocalizedString("alert-failure-message-title", comment: ""),  message: arg)
    }
}

//
//  MovieDetailViewController_Presenter+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation

extension MovieDetailViewController :   MovieDetailPresenterToViewController
{
    func successSaveFavoriteMovie( model arg    :   MovieDetailResponse )
    {
        
    }
    
    func failureSaveFavoriteMovie( message arg  :   MovieDetailResponse) {
        self.showMessage(title : NSLocalizedString("alert-error-message-title", comment: ""),  message: arg.message)
    }
}

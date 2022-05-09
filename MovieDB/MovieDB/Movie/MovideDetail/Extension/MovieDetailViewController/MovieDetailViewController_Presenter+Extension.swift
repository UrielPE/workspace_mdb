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
        self.indicatorView.dismiss(animated: true) {
            self.showMessage(title : NSLocalizedString("alert-success-message-title", comment: ""),  message: arg.message)
        }
    }
    
    func failureSaveFavoriteMovie( message arg  :   MovieDetailResponse)
    {
        self.indicatorView.dismiss(animated: true) {
            self.showMessage(title : NSLocalizedString("alert-failure-message-title", comment: ""),  message: arg.message)
        }
    }
}

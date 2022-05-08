//
//  MovieDashboardViewController_Presenter+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

extension MovieDashboardViewController  :   MovieDashboardPresenterToViewController
{
    func successGetMovies(model arg: MovieResponse)
    {
        self.containerView.listOfMovies =   arg.listOfMovies
        
        DispatchQueue.main.async {
            self.indicatorView.dismiss(animated: true)
        }
    }
    
    func failureGetMovies()
    {
        DispatchQueue.main.async {
            self.indicatorView.dismiss(animated: true)
        }
    }
}

//
//  MovieDashboardViewController_InnerView+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

extension MovieDashboardViewController  :   MovieDashboardInnerViewToParentView
{
    func movieSelected(model arg: Movie)
    {
        self.presenter?.showMovieDetail(model: arg)
    }
}

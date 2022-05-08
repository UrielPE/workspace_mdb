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
        let detail  =   MovieDetailMain.createModule(model: arg)
        detail.modalTransitionStyle     =   .coverVertical
        detail.modalPresentationStyle   =   .pageSheet

        self.present(detail, animated: true)
    }
}

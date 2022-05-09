//
//  MovieDashboardRouter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation
import UIKit

class MovieDashboardRouter
{
    public var viewController : UIViewController?
    
    init(){
        //Empty constructor
    }
}

extension MovieDashboardRouter : MovieDashboardPresenterToRouter
{
    func showProfile()
    {
        if let view =   self.viewController
        {
            let profile   =   MovieProfileMain.createModule()
            profile.modalTransitionStyle     =   .coverVertical
            profile.modalPresentationStyle   =   .pageSheet
            
            view.present(profile, animated: true)
        }
    }
    
    func showMovieDetail( model arg : Movie )
    {
        if let view =   self.viewController
        {
            let detail  =   MovieDetailMain.createModule(model: arg)
            detail.modalTransitionStyle     =   .coverVertical
            detail.modalPresentationStyle   =   .pageSheet

            view.present(detail, animated: true)
        }
    }
    
    func logOut() {
        if let navigation = self.viewController?.navigationController {
            navigation.initRootViewController(MovieLoginMain.createModule())
        }
    }
}

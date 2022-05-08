//
//  MovieDashboardMain.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 01/05/22.
//

import Foundation
import UIKit

class MovieDashboardMain
{
    public static func createModule( navigation arg : UINavigationController ) -> UIViewController
    {
        let viewController  :   MovieDashboardViewController?   =   MovieDashboardViewController()
        
        if let view = viewController
        {
            let presenter   =   MovieDashboardPresenter()
            let interactor  =   MovieDashboardInteractor()
            let router      =   MovieDashboardRouter()
            
            view.presenter  =   presenter
            
            presenter.view          =   view
            presenter.interactor    =   interactor
            presenter.router        =   router
            
            interactor.presenter    =   presenter
            
            router.navigation       =   arg
            
            return view
        }
        
        return UIViewController()
    }
}

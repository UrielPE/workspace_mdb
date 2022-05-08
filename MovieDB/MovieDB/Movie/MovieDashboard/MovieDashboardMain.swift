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
    public static func createModule()-> UIViewController
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
            
            router.viewController   =   view
            
            return view
        }
        
        return UIViewController()
    }
}

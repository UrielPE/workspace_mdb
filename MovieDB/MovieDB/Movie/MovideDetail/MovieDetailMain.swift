//
//  MovieDetailMain.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation
import UIKit

class MovieDetailMain
{
    public static func createModule( model arg : Movie ) -> UIViewController
    {
        let viewController  :   MovieDetailViewController?  =   MovieDetailViewController()
        
        if let viewController = viewController
        {
            let presenter   =   MovieDetailPresenter()
            let interactor  =   MovieDetailInteractor()
            let router      =   MovieDetailRouter()
            
            viewController.presenter    =   presenter
            viewController.movie        =   arg
            
            presenter.view         =   viewController
            presenter.router       =   router
            presenter.interactor   =   interactor
            
            interactor.presenter   =   presenter
            
            router.view            =   viewController
        }

        return UIViewController()
    }
}

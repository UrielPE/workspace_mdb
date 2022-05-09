//
//  MovieDetailMain.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation
import UIKit

class MovieProfileMain
{
    public static func createModule() -> UIViewController
    {
        let viewController  :   MovieProfileViewController? =   MovieProfileViewController()
        
        if let viewController = viewController
        {
            let presenter   =   MovieProfilePresenter()
            let interator   =   MovieProfileInteractor()
            let router      =   MovieProfileRouter()
            
            viewController.presenter    =   presenter
            
            presenter.interactor        =   interator
            presenter.router            =   router
            presenter.view              =   viewController
            
            interator.presenter         =   presenter
            
            router.viewController       =   viewController
            
            return viewController
        }
        
        return UIViewController()
    }
}

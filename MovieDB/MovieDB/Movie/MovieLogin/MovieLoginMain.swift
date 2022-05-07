//
//  MovieLoginMain.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 06/05/22.
//

import Foundation
import UIKit

public class MovieLoginMain
{
    public static func createModule()   ->  UIViewController
    {
        let viewController  :   MovieLoginViewController?   =   MovieLoginViewController()
        
        if let view = viewController
        {
            let presenter   =   MovieLoginPresenter()
            let interactor  =   MovieLoginInteractor()
            let router      =   MovieLoginRouter()
            
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

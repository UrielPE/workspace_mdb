//
//  MovieLoginRouter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation
import UIKit

class MovieLoginRouter      :   MovieLoginPresenterToRouter
{
    public var viewController   :   UIViewController?
    
    init() {
        //Empty constructor
    }
    
    func goToDashboard()
    {
        if let navigation = viewController?.navigationController {
            navigation.initRootViewController(MovieDashboardMain.createModule())
        }
    }
}

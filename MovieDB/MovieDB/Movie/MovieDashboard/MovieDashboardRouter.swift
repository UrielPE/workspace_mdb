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
    public var navigation : UINavigationController?
    
    init(){
        //Empty constructor
    }
}

extension MovieDashboardRouter : MovieDashboardPresenterToRouter
{
    func logOut() {
        if let navigation = self.navigation {
            navigation.initRootViewController(MovieLoginMain.createModule())
        }
    }
}

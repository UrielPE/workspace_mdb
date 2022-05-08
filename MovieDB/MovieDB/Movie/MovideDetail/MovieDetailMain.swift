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
        let viewController      =   MovieDetailViewController()
        viewController.movie    =   arg

        return viewController
    }
}

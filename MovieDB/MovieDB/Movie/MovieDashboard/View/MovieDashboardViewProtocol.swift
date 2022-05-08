//
//  MovieDashboardProtocol.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

protocol MovieDashboardInnerViewToParentView    :   AnyObject
{
    func movieSelected( model arg : Movie )
}

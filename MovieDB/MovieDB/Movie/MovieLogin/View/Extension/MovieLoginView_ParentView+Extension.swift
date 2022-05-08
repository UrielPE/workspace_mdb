//
//  MovieLoginView_ParentView+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

extension MovieLoginView    :   MovieLoginParentViewToInnerView
{
    func showMessage(message arg: String)
    {
        if !arg.isEmpty {
            self.lbErrorMessage.text    =   arg
        }
    }
}

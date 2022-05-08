//
//  MovieLoginViewController_InnerView+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

extension MovieLoginViewController  :   MovieLoginInnerViewToParentView
{
    func signIn( model arg : UserRequest )
    {
        self.present(self.indicatorView, animated: false) {
            self.presenter?.signIn(model: arg)
        }
    }
}

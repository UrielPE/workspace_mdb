//
//  MovieLoginViewController_Presenter+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

extension MovieLoginViewController  :   MovieLoginPresenterToViewController
{
    func successSignIn( model arg  : UserResponse )
    {
        UserDefaults.standard.set(arg.username, forKey: "username")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1)
        {
            self.indicatorView.dismiss(animated: true)
            self.presenter?.goToDashboard()
        }
    }
    
    func failureSignIn( messge arg : String )
    {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1)
        {
            self.indicatorView.dismiss(animated: true)
            self.viewFormDelegate?.showMessage(message: arg)
        }
    }
}

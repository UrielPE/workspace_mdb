//
//  MovieLoginView_Action+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import Foundation

extension MovieLoginView
{
    @objc public func signIn()
    {
        self.lbErrorMessage.text    =   ""
        
        self.delegate?.signIn(
            model: UserRequest(
                username: self.txtUsername.text?.trimmingCharacters(in: CharacterSet.whitespaces),
                password: self.txtPassword.text
            )
        )
    }
}

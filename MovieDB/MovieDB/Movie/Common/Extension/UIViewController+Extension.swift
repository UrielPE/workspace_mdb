//
//  UIViewController+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation
import UIKit

extension UIViewController
{
    public func showErrorMessage( message arg : String )
    {
        let alertOptions    =   UIAlertController(title: "alert-error-message-title", message: NSLocalizedString(arg, comment: ""), preferredStyle: .alert)
        
        let accept     =   UIAlertAction(
            title: NSLocalizedString("alert-error-message-button-accept", comment: ""),
            style: .cancel)
        { UIAlertAction in
            //Empty action
        }
        
        alertOptions.addAction(accept)
        
        self.present(alertOptions, animated: true)
    }
}

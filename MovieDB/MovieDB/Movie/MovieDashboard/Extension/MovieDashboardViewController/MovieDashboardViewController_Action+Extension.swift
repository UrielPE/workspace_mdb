//
//  MovieDashboardViewController_Actions+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 01/05/22.
//

import Foundation
import UIKit

extension MovieDashboardViewController
{
    @objc public func showMenuOptions()
    {
        let alertOptions    =   UIAlertController(title: "", message: NSLocalizedString("dashboard-navigation-menu-title", comment: ""), preferredStyle: .actionSheet)
        
        let viewProfile     =   UIAlertAction(
            title: NSLocalizedString("dashboard-navigation-menu-view-profile", comment: ""),
            style: .default)
        { UIAlertAction in
            
            self.profileViewController.modalTransitionStyle     =   .coverVertical
            self.profileViewController.modalPresentationStyle   =   .pageSheet
            self.present(self.profileViewController, animated: true) {
                //Instructions
            }
        }
        
        let logOut     =   UIAlertAction(
            title: NSLocalizedString("dashboard-navigation-menu-log-out", comment: ""),
            style: .destructive)
        { UIAlertAction in
            
            self.presenter?.logOut()
        }
        
        let cancel     =   UIAlertAction(
            title: NSLocalizedString("dashboard-navigation-menu-cancel", comment: ""),
            style: .cancel)
        { UIAlertAction in
            //Empty action
        }
        
        alertOptions.addAction(viewProfile)
        alertOptions.addAction(cancel)
        alertOptions.addAction(logOut)
        
        
        self.present(alertOptions, animated: true)
    }
}


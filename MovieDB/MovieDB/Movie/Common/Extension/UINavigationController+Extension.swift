//
//  UINavigationController+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 01/05/22.
//

import Foundation
import UIKit

extension UINavigationController
{
    func initRootViewController(_ vc: UIViewController, duration: CFTimeInterval = 0.3)
    {
        self.addTransition( duration: duration)
        self.viewControllers.removeAll()
        self.pushViewController(vc, animated: false)
        self.popToRootViewController(animated: false)
    }
    
    private func addTransition( duration: CFTimeInterval = 0.3)
    {
        let transition = CATransition()
        transition.duration = duration
        self.view.layer.add(transition, forKey: nil)
    }
}

//
//  LoadingIndicatorViewController.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 01/05/22.
//

import UIKit

class LoadingIndicatorViewController: UIViewController
{
    private lazy var indicator  :   UIActivityIndicatorView =
    {
        let indicatorView       =   UIActivityIndicatorView()
        indicatorView.center    =   self.view.center
        indicatorView.hidesWhenStopped  =   false
        indicatorView.style     =   .whiteLarge
        indicatorView.color     =   .systemRed
        indicatorView.translatesAutoresizingMaskIntoConstraints =   false
        
        return indicatorView
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if self.isBeingPresented {
            self.indicator.startAnimating()
        }
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    private func loadComponent()
    {
        let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(blurEffectView)
        
        self.view.addSubview(self.indicator)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
        
            self.indicator.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.indicator.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.indicator.widthAnchor.constraint(equalToConstant: 100),
            self.indicator.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

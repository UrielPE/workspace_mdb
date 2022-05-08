//
//  MovieDashboardViewController.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 01/05/22.
//

import UIKit

class MovieDashboardViewController: UIViewController
{
    internal lazy var indicatorView   :   LoadingIndicatorViewController  =
    {
        let indicatorView   =   LoadingIndicatorViewController()
        indicatorView.modalTransitionStyle      =   .crossDissolve
        indicatorView.modalPresentationStyle    =   .overCurrentContext
        
        return indicatorView
    }()
    
    internal lazy var containerView  :   MovieDashboardView  =
    {
        let view    =   MovieDashboardView(frame: .zero)
        view.delegate           =   self
        view.backgroundColor    =   .black
        view.translatesAutoresizingMaskIntoConstraints  =   false
        
        return view
    }()
    
    public var presenter    :   MovieDashboardViewControllerToPresenter?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.getMovies()
        
        self.setUpViewController()
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    private func getMovies()
    {
        self.present(indicatorView, animated: true) {
            self.presenter?.getMovies()
        }
    }
    
    private func setUpViewController()
    {
        self.view.backgroundColor   =   UIColor(red: 69/255, green: 69/255, blue: 69/255, alpha: 1)
        
        navigationItem.rightBarButtonItems  =   [
            UIBarButtonItem(image: UIImage(named: "MENU_ICON"), style: .plain, target: self, action: #selector(self.showMenuOptions))
        ]
        
        navigationItem.title    =   NSLocalizedString("dashboard-navigation-title", comment: "")
        navigationController?.navigationBar.tintColor          =   .white
    }
    
    private func loadComponent()
    {
        self.view.addSubview(self.containerView)
    }
    
    private func loadComponentLayout()
    {
        if let navigation = self.navigationController
        {
            NSLayoutConstraint.activate([
                                
                self.containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: navigation.navigationBar.frame.maxY),
                self.containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
                self.containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
                self.containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
                self.containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ])
        }
    }
}

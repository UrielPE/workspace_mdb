//
//  LoginViewController.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 30/04/22.
//

import UIKit

class MovieLoginViewController: UIViewController
{
    public lazy var viewForm    :   MovieLoginView  =
    {
        let view        =   MovieLoginView(frame: CGRect.zero)
        view.delegate   =   self
        view.translatesAutoresizingMaskIntoConstraints  =   false
        
        return view
    }()
    
    public lazy var scroll      :   UIScrollView    =
    {
        let scrollView   =   UIScrollView()
        scrollView.backgroundColor  =   UIColor.black
        scrollView.showsVerticalScrollIndicator     =   false
        scrollView.showsHorizontalScrollIndicator   =   false
        scrollView.translatesAutoresizingMaskIntoConstraints    =   false
        
        return scrollView
    }()
    
    internal lazy var indicatorView   :   LoadingIndicatorViewController  =
    {
        let indicatorView   =   LoadingIndicatorViewController()
        indicatorView.modalTransitionStyle      =   .crossDissolve
        indicatorView.modalPresentationStyle    =   .overCurrentContext
        
        return indicatorView
    }()
    
    internal var presenter        :   MovieLoginViewControllerToPresenter?
    internal var viewFormDelegate :   MovieLoginParentViewToInnerView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setUpViewController()
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
    }
    
    private func setUpViewController()
    {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard)))
    }
    
    private func loadComponent()
    {
        self.viewFormDelegate   =   self.viewForm
        
        self.scroll.addSubview(self.viewForm)
        self.view.addSubview(self.scroll)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
            
            self.scroll.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.scroll.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.scroll.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
            self.viewForm.topAnchor.constraint(equalTo: self.scroll.topAnchor),
            self.viewForm.leftAnchor.constraint(equalTo: self.scroll.leftAnchor),
            self.viewForm.rightAnchor.constraint(equalTo: self.scroll.rightAnchor),
            self.viewForm.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor),
            self.viewForm.bottomAnchor.constraint(equalTo: self.scroll.bottomAnchor)
        ])
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }
}

//
//  MovieProfileViewController.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import UIKit

class MovieProfileViewController: UIViewController
{
    public lazy var stackView   :   UIStackView =
    {
        let stackView           =   UIStackView()
        stackView.axis          =   .vertical
        stackView.alignment     =   .center
        stackView.distribution  =   .equalSpacing
        stackView.spacing       =   5
        stackView.layoutMargins =   UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        stackView.isLayoutMarginsRelativeArrangement        =   true
        stackView.translatesAutoresizingMaskIntoConstraints =   false
        
        return stackView
    }()
    
    private lazy var profileImage   :   UIImageView =
    {
        let imageView           =   UIImageView()
        imageView.image         =   UIImage(named: "MOVIE_ICON")
        imageView.contentMode   =   .scaleAspectFit
        
        return imageView
    }()
    
    private lazy var emailProfile   :   UILabel =
    {
        let label    =   UILabel()
        label.text   =  UserDefaults.standard.string(forKey: "username")
        label.textColor     =   UIColor.black
        label.numberOfLines =   0
        label.font  =   UIFont.radioCanadaSemiBold(size: 16)
        
        return label
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor   =   .white
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    private func loadComponent()
    {
        self.stackView.addArrangedSubview(self.profileImage)
        self.stackView.addArrangedSubview(self.emailProfile)
        
        self.view.addSubview(self.stackView)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
            
            self.stackView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.stackView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

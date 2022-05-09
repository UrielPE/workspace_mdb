//
//  MovieDetailViewController.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import UIKit

class MovieDetailViewController: UIViewController
{
    public lazy var stackView   :   UIStackView =
    {
        let stackView           =   UIStackView()
        stackView.axis          =   .vertical
        stackView.alignment     =   .center
        stackView.distribution  =   .equalSpacing
        stackView.spacing       =   8
        stackView.layoutMargins =   UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        stackView.isLayoutMarginsRelativeArrangement        =   true
        stackView.translatesAutoresizingMaskIntoConstraints =   false
        
        return stackView
    }()
    
    private lazy var movieTitle :   UILabel     =
    {
        let label       =   UILabel()
        label.text      =   ""
        label.font      =   UIFont.radioCanadaBold(size: 30)
        label.textColor =   .white
        label.numberOfLines =   0
        label.textColor     =   UIColor.white
        
        return label
    }()
    
    private lazy var movieImage :   UIImageView =
    {
        let imageView           =   UIImageView()
        imageView.contentMode   =   .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints =   false
        
        return imageView
    }()
    
    private lazy var movieDetail :   UILabel     =
    {
        let label       =   UILabel()
        label.text      =   ""
        label.font      =   UIFont.radioCanadaRegular(size: 16)
        label.textColor     =   UIColor.white
        label.numberOfLines =   0
        label.textColor     =   UIColor.white
        label.textAlignment =   .justified
        
        return label
    }()
    
    private lazy var btnSignIn  :   UIButton    =
    {
        let button   =   UIButton()
        button.layer.cornerRadius   =   3
        button.titleLabel?.font =   UIFont.radioCanadaRegular(size: 18)
        button.backgroundColor  =   UIColor(red: 229/255, green: 9/255, blue: 20/255, alpha: 1)
        button.setTitle(NSLocalizedString("detail-movie-favorite-button", comment: ""), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(self.addFavoriteMovie), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints    =   false
        
        return button
    }()
    
    internal var movie      :   Movie?
    
    public var presenter    :   MovieDetailViewControllerToPresenter?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(blurEffectView)
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    private func loadComponent()
    {
        if
            let movie           =   movie,
            let pathImage       =   movie.posterPath,
            let optionalImage   =   UIImage(named: "MOVIE_ICON")
        {
            self.movieTitle.text    =   movie.title
            self.movieImage.imageFromServerUrl(urlString: Constants.URL.urlImages+pathImage, placeholderImage: optionalImage)
            self.movieDetail.text   =   movie.overview
        }
        
        self.stackView.addArrangedSubview(self.movieTitle)
        self.stackView.addArrangedSubview(self.movieImage)
        self.stackView.addArrangedSubview(self.movieDetail)
        self.stackView.addArrangedSubview(self.btnSignIn)
        
        self.view.addSubview(self.stackView)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
            
            self.stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            self.btnSignIn.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 30),
            self.btnSignIn.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -30),
            self.btnSignIn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

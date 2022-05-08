//
//  MovieCollectionViewCell.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell
{
    public static var identifier    =   "MovieCollectionViewCellIdentifier"
    
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
    
    private lazy var movieImage     :   UIImageView =
    {
        let imageView           =   UIImageView()
        imageView.contentMode   =   .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints =   false
        
        return imageView
    }()
    
    private lazy var movieDetail    :   UILabel =
    {
        let label   =   UILabel()
        label.text  =   ""
        label.font  =   UIFont.radioCanadaRegular(size: 13)
        label.numberOfLines =   0
        
        return label
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.loadComponent()
        self.loadComponentLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func loadComponent()
    {
        self.stackView.addArrangedSubview(self.movieImage)
        self.stackView.addArrangedSubview(self.movieDetail)
        
        self.addSubview(self.stackView)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
        
            self.stackView.topAnchor.constraint(equalTo: self.topAnchor),
            self.stackView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.stackView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    public func setUpData( model arg : Movie )
    {
        if
            let path            = arg.posterPath,
            let optionalImage   = UIImage(named: "MOVIE_ICON")
        {
            DispatchQueue.main.async {
                self.movieImage.imageFromServerUrl(urlString: Constants.URL.urlImages+path, placeholderImage: optionalImage)
                self.movieDetail.text   =   arg.originalTitle
            }
        }
    }
}

//
//  MovieDashboardView.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 01/05/22.
//

import UIKit

class MovieDashboardView: UIView
{
    private lazy var collectionViewLayout   :   UICollectionViewLayout  =
    {
        let collectionLayout = UICollectionViewFlowLayout()
        collectionLayout.minimumInteritemSpacing = 10
        collectionLayout.minimumLineSpacing = 10
        collectionLayout.scrollDirection    = .vertical
        collectionLayout.sectionInset       = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        
        return collectionLayout
    }()
    
    internal lazy var collectionView  :   UICollectionView =
    {
        let collectionView              =   UICollectionView(frame: CGRect.zero, collectionViewLayout: self.collectionViewLayout)
        collectionView.delegate         =   self
        collectionView.dataSource       =   self
        collectionView.backgroundColor  =   UIColor.black
        collectionView.showsHorizontalScrollIndicator   =   false
        collectionView.showsVerticalScrollIndicator     =   true
        collectionView.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: MovieCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints    =   false
        
        return collectionView
    }()
    
    internal var delegate   :   MovieDashboardInnerViewToParentView?
    
    public var listOfMovies :   [Movie]?    {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    
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
        self.addSubview(self.collectionView)
    }
    
    private func loadComponentLayout()
    {
        NSLayoutConstraint.activate([
            
            self.collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            self.collectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.collectionView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30)
        ])
    }
}

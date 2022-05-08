//
//  MovieDashboardView_CollectionDelegate+Extension.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation
import UIKit

extension MovieDashboardView :  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        self.listOfMovies?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if let cell    =   collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.identifier, for: indexPath) as? MovieCollectionViewCell
        {
            cell.backgroundColor    =   UIColor(red: 69/255, green: 69/255, blue: 69/255, alpha: 0.8)
            cell.layer.cornerRadius =   5
            
            if let movie = self.listOfMovies?[indexPath.row] {
                cell.setUpData(model: movie)
            }
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        CGSize(
            width   : self.collectionView.frame.width/2.5,
            height  : self.collectionView.frame.width/2
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if let movie    =   self.listOfMovies?[indexPath.row] {
            self.delegate?.movieSelected(model: movie)
        }
    }
}

//
//  MovieDetailPresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation
import UIKit
import CoreData

class MovieDetailInteractor
{
    public weak var presenter : MovieDetailInteractorToPresenter?
    
    init() {
        //Empty constructor
    }
    
    internal func getContext() -> NSManagedObjectContext {
        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }//end func getContext
}

extension MovieDetailInteractor :   MovieDetailPresenterToInteractor
{
    func saveFavoriteMovie(model arg: MovieDetailRequest)
    {
        
        let context =   self.getContext()
        let newFavoriteMovie    =   UserFavoriteMovie(context: context)
        newFavoriteMovie.id     =   arg.id
        newFavoriteMovie.title  =   arg.title
        newFavoriteMovie.overview   =   arg.overview
        newFavoriteMovie.poster     =   arg.image
        
        do {
            try context.save()
            self.presenter?.successSaveFavoriteMovie(
                model   : MovieDetailResponse(message: "Added to your favorites list"))
        }
        
        catch {
            self.presenter?.failureSaveFavoriteMovie(
                message : MovieDetailResponse(message: "We're having trouble, please try again later"))
        }
    }
}

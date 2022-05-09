//
//  MovieProfilePresenter.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 08/05/22.
//

import Foundation
import UIKit
import CoreData

class MovieProfileInteractor
{
    public weak var presenter   :   MovieProfileInteractorToPresenter?
    
    init(){
        //Empty constructor
    }
    
    internal func getContext() -> NSManagedObjectContext {
        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }//end func getContext
}

extension MovieProfileInteractor    :   MovieProfilePresenterToInteractor
{
    func getMovies(){
        do {
            let movies  =   try self.getContext().fetch(UserFavoriteMovie.getFavoriteMovies())
            self.presenter?.successFavoriteMovies(model: movies)
        }
        
        catch {
            self.presenter?.failureFavoriteMovies(message: "We're having trouble, please try again later")
        }
    }
}

//
//  MovieDashboardInteractor.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

class MovieDashboardInteractor
{
    public weak var presenter   :   MovieDashboardInteractorToPresenter?
    
    init(){
        //Empty constructor
    }
}
    
extension MovieDashboardInteractor  :   MovieDashboardPresenterToInteractor
{
    func getMovies()
    {
        let session =   URLSession.shared
        var request =   URLRequest.init(url: URL(string:
                        Constants.URL.main + Constants.EndPoint.urlListPopularMovies + Constants.apiKey)!)
        
        request.httpMethod  =   "GET"
        request.addValue("aplication/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil, let response = response as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode  ==  200
            {
                do {
                    let json    =   JSONDecoder()
                    let movies  =   try json.decode(MovieResponse.self, from: data)
                
                    self.presenter?.successGetMovies(model: movies)
                } catch let error as NSError {
                    self.presenter?.failureGetMovies()
                    debugPrint( "Error: ", error.localizedDescription )
                }
            }
            
            else if response.statusCode    ==  401{
                debugPrint( "Error 401!" )
            }
        }.resume()
        
        session.finishTasksAndInvalidate()
    }
}

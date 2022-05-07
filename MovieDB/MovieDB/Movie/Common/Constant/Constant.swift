//
//  Constant.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

struct Constants
{
    static let apiKey   =   "?api_key=d6e5dbcb2ed4771cbe7b6ab84acf7a51"
    
    struct URL {
        static let  main        =   "https://api.themoviedb.org/"
        static let  urlImages   =   "https://image.tmdb.org/t/p/w200"
    }
    
    struct EndPoint {
        static let  urlListPopularMovies   =   "3/movie/popular"
        static let  urlDetailMovie         =   "3/movie/"
    }
}

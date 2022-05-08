//
//  Movie.swift
//  MovieDB
//
//  Created by Uriel Peña Estel on 02/05/22.
//

import Foundation

struct MovieResponse : Codable
{
    public let  listOfMovies    :   [Movie]?
    
    enum CodingKeys: String, CodingKey {
        case listOfMovies   =   "results"
    }
}

struct Movie : Codable
{
    public let  id              :   Int?
    public let  title           :   String?
    public let  popularity      :   Double?
    public let  voteCount       :   Int?
    public let  originalTitle   :   String?
    public let  voteAverage     :   Double?
    public let  overview        :   String?
    public let  releaseDate     :   String?
    public let  posterPath      :   String?
    
    enum CodingKeys :   String, CodingKey{
        case id              =   "id"
        case title           =   "title"
        case popularity      =   "popularity"
        case voteCount       =   "vote_count"
        case originalTitle   =   "original_title"
        case voteAverage     =   "vote_average"
        case overview        =   "overview"
        case releaseDate     =   "release_date"
        case posterPath      =   "poster_path"
    }
}

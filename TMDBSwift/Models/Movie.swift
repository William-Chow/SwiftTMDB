//
//  Movie.swift
//  TMDBSwift
//
//  Created by William Chow on 2/7/23.
//

import Foundation

struct MoviesResp: Codable {
    let page: Int
    let results: [MovieModel]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}


struct MovieModel: Codable, Identifiable {
     let adult: Bool
     let backdropPath,posterPath: String?
     let genreIDS: [Int]
     let id: Int
     let originalLanguage, originalTitle, overview: String
     let popularity: Double
     let releaseDate, title: String
     let video: Bool
     let voteAverage: Double
     let voteCount: Int

     enum CodingKeys: String, CodingKey {
         case adult
         case backdropPath = "backdrop_path"
         case genreIDS = "genre_ids"
         case id
         case originalLanguage = "original_language"
         case originalTitle = "original_title"
         case overview, popularity
         case posterPath = "poster_path"
         case releaseDate = "release_date"
         case title, video
         case voteAverage = "vote_average"
         case voteCount = "vote_count"
     }
}


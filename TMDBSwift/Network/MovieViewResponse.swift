//
//  MovieViewModel.swift
//  TMDBSwift
//
//  Created by William Chow on 2/7/23.
//

import Foundation

class apiCall {
    var tmdbAPIBaseURL: URL {
        URL(string: "https://api.themoviedb.org/3")!
    }
    var api_key = "1ee04cdd24bdc8497ec43f739fd3b5a5"
    
    func fetchPopularList(completion:@escaping ([MovieModel]) -> ()) {
        guard let url = URL(string: "\(tmdbAPIBaseURL)/movie/popular?api_key=\(api_key)") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let model = try? JSONDecoder().decode(MoviesResp.self, from: data!)
            DispatchQueue.main.async {
                completion(model!.results)
            }
        }
        .resume()
    }
}

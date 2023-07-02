//
//  Utils.swift
//  TMDBSwift
//
//  Created by William Chow on 2/7/23.
//

import Foundation

class Utils {
    
    func getImageUrl(posterPath : String, backDropPath : String) -> String {
        if(!posterPath.isEmpty || !backDropPath.isEmpty){
            if(posterPath.isEmpty) {
                return "https://image.tmdb.org/t/p/w500\(backDropPath)"
            } else {
                return "https://image.tmdb.org/t/p/w500\(posterPath)"
            }
        } else {
            return ""
        }
    }
}

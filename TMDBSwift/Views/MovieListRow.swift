//
//  MovieListRow.swift
//  TMDBSwift
//
//  Created by William Chow on 2/7/23.
//

import SwiftUI

struct MovieListRow: View {
    var movie: MovieModel
    
    var body: some View {
        VStack(alignment: .leading){
            RemoteImage(url: Utils().getImageUrl(posterPath: movie.posterPath!, backDropPath: movie.backdropPath!))
                .frame(width: 135, height: 200, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .mask(RoundedRectangle(cornerRadius: 16))
        }
        HStack {
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.system(size: 13))
                Text("Release Date \(movie.releaseDate)")
                    .font(.system(size: 11)).padding(.top)
            }
        }
    }
}

//
//  MovieDetailView.swift
//  TMDBSwift
//
//  Created by William Chow on 2/7/23.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: MovieModel
    
    var body: some View {
        ScrollView {
            VStack {
                RemoteImage(url: Utils().getImageUrl(posterPath: movie.posterPath!, backDropPath: movie.backdropPath!))
                    .frame(width: 230, height: 350, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .mask(RoundedRectangle(cornerRadius: 16))
                Text(movie.title)
                    .font(.title).padding(10).bold()
                Text(movie.overview)
                    .font(.body).padding(10)
                Text(movie.releaseDate)
                    .font(.subheadline).padding(10)
                Text("Normal Language : \(movie.originalLanguage)")
                    .font(.caption).padding(10)
            }
            .padding()
        }
    }
}

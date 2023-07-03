//
//  ContentView.swift
//  TMDBSwift
//
//  Created by William Chow on 2/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var popularList: [MovieModel] = []
    @State var originalPopularList: [MovieModel] = []
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List() {
                ForEach(popularList) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        MovieListRow(movie: movie)
                    }
                }
            }
            .onAppear {
                apiCall().fetchPopularList { (movies) in
                    self.popularList = movies
                    self.originalPopularList = movies
                }
            }
            .navigationTitle("Popular Movie")
            .searchable(text: $searchText)
            .onChange(of: searchText) { searchText in
                if searchText.isEmpty {
                    popularList = originalPopularList
                } else {
                    popularList = popularList.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

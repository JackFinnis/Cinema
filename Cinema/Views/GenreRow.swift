//
//  GenreRow.swift
//  Cinema
//
//  Created by Finnis on 21/03/2021.
//

import SwiftUI

struct GenreRow: View {
    var genre: String
    var genreFilms: [Film]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(genre)
                .font(.headline)
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(genreFilms) { film in
                        GenreFilm(film: film)
                    }
                }
            }
        }
    }
}

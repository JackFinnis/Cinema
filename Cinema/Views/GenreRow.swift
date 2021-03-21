//
//  GenreRow.swift
//  Cinema
//
//  Created by Finnis on 21/03/2021.
//

import SwiftUI

struct GenreRow: View {
    @Binding var tickets: [Film]
    @Binding var tabSelection: Int
    
    var genre: String
    var genreFilms: [Film]
    
    var body: some View {
        Section(header: Text(genre)
                            .textCase(nil)
                            .font(.headline)
                            .padding(.horizontal)) {
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(genreFilms) { film in
                            NavigationLink(destination: FilmDetail(tickets: $tickets, tabSelection: $tabSelection, film: film)) {
                                GenreFilm(film: film)
                            }
                        }
                    }
                }
            }
        }
    }
}

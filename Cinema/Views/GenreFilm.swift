//
//  FilmPreview.swift
//  Cinema
//
//  Created by Finnis on 21/03/2021.
//

import SwiftUI

struct GenreFilm: View {
    var film: Film
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(film.imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(10)
            Text(film.name)
                .font(.caption)
        }
        .padding(.horizontal, 10)
    }
}

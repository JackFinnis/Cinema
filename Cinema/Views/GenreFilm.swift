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
                .cornerRadius(11)
            Text(film.name)
                .padding(.leading, 10)
                .font(.caption)
                .foregroundColor(.white)
        }
        .padding(10)
    }
}

//
//  FilmDetail.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct FilmDetail: View {
    var film: Film
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(film.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(film.name)
                    .padding(.horizontal)
                    .font(.largeTitle)
                Text(film.description)
                    .padding()
            }
        }
        .navigationTitle(film.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

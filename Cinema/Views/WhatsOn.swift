//
//  WhatsOnView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct WhatsOn: View {
    @Binding var tickets: [Film]
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText)
                
                List(films.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { film in
                    NavigationLink(destination: FilmDetail(tickets: $tickets, film: film)) {
                        Text(film.name)
                    }
                }
            }
            .navigationTitle("What's On?")
            .toolbar {
                Button(action: {
                    print("filter")
                }, label: {
                    Image(systemName: "line.horizontal.3.decrease.circle")
                })
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


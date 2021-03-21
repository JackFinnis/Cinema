//
//  WhatsOnView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct WhatsOn: View {
    @EnvironmentObject var modelData: ModelData
    
    @Binding var tabSelection: Int
    @Binding var tickets: [Film]
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText)
                
                List {
                    ForEach(modelData.genres.keys.sorted(), id: \.self) { key in
                        GenreRow(tickets: $tickets, tabSelection: $tabSelection, genre: key, genreFilms: modelData.genres[key]!.filter({ searchText.isEmpty ? true : $0.name.contains(searchText)}))
                    }
                    .listRowInsets(EdgeInsets())
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


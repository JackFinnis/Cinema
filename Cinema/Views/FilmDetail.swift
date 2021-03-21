//
//  FilmDetail.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI
import MapKit

struct FilmDetail: View {
    @Binding var tickets: [Film]
    @Binding var tabSelection: Int
    
    @State var sheetPresented: Bool = false
    @State var selection: String = "Next Showtime"
    @State private var centerCoordinate = CLLocationCoordinate2D()
    
    var displayChoices: [String] = ["Next Showtime", "Movie"]
    var film: Film
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    NavigationLink(destination: Image(film.imageName).resizable().aspectRatio(contentMode: .fit).navigationTitle(film.name)) {
                        Image(film.imageName)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(11)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(film.name)
                            .font(.headline)
                        
                        VStack(alignment: .leading) {
                            Text(film.genre)
                            Text(film.runtime)
                            Text(film.rating)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    }
                    .padding(.leading, 10)
                }
                
                Divider()
                    .padding(.top, 10)
                Text(film.description)
                    .padding(.top, 10)
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Divider()
                    .padding(.top, 10)
                Text("Next Showtime")
                    .padding(.top, 10)
                    .font(.headline)
                Text(film.time + ", " + film.date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Pinewood Cinema")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    NavigationLink(destination: CinemaMap(), label: {
                        HStack {
                            Text("Show on map")
                            Image(systemName: "location")
                        }
                    })
                }
                
                Button(action: {
                    if !tickets.contains(film) {
                        sheetPresented = true
                    } else {
                        tabSelection = 1
                    }
                }, label: {
                    if tickets.contains(film) {
                        Text("View Ticket")
                            .padding(15)
                            .frame(maxWidth: .infinity)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(11)
                            .padding(.top, 10)
                    } else {
                        Text("Buy Ticket")
                            .padding(15)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .cornerRadius(11)
                            .padding(.top, 10)
                    }
                })
                .sheet(isPresented: $sheetPresented, onDismiss: nil, content: { BookFilm(sheetPresented: $sheetPresented, tickets: $tickets, film: film)
                })
            }
            .padding(10)
        }
        .navigationTitle(film.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

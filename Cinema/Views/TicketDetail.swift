//
//  TicketDetail.swift
//  Cinema
//
//  Created by Finnis on 21/03/2021.
//

import SwiftUI

struct TicketDetail: View {
    @Binding var tabSelection: Int
    
    var film: Film
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Image("qrcode")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(11)
                
                Divider()
                    .padding(.top, 10)
                Text(film.name)
                    .font(.headline)
                    .padding(.leading, 10)
                VStack(alignment: .leading) {
                    Text(film.genre)
                    Text(film.runtime)
                    Text(film.rating)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.leading, 10)
                
                Divider()
                    .padding(.top, 10)
                Text("Showtime")
                    .padding(.top, 10)
                    .padding(.leading, 10)
                    .font(.headline)
                Text(film.time + ", " + film.date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.leading, 10)
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
                .padding(.leading, 10)
                
                Button(action: {
                    tabSelection = 0
                }, label: {
                    Text("Film Details")
                        .padding(15)
                        .frame(maxWidth: .infinity)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(11)
                        .padding(.top, 10)
                })
            }
            .padding(10)
        }
        .navigationTitle(film.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//
//  BookFilm.swift
//  Cinema
//
//  Created by Finnis on 21/03/2021.
//

import SwiftUI

struct BookFilm: View {
    @Binding var sheetPresented: Bool
    @Binding var tickets: [Film]

    @State var numberOfTickets: Int = 1
    
    var total: String {
        "£" + String(Double(numberOfTickets) * 12.99)
    }
        
    var ticketNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var film: Film
    
    var body: some View {
        NavigationView {
            ZStack {
                Form {
                    Section(header: Text("Film Details")) {
                        Text(film.name)
                            .padding(.bottom, 5)
                        
                        VStack(alignment: .leading) {
                            Text(film.genre)
                            Text(film.runtime)
                            Text(film.rating)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 5)
                        
                        VStack(alignment: .leading) {
                            Text(film.time)
                            Text(film.date)
                            Text("Pinewood Cinema")
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 5)
                    }
                    .padding(.top, 10)
                    
                    Section(header: Text("Number of tickets")) {
                        Text("All tickets cost £12.99 each")
                        
                        Picker("Selection Ticket Number", selection: $numberOfTickets) {
                            ForEach(ticketNumbers, id: \.self) {
                                Text(String($0))
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                    Section(header: Text("Total")) {
                        Text(total)
                    }
                }
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        tickets.append(film)
                        sheetPresented = false
                    }, label: {
                        Text("Pay")
                            .padding(15)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .cornerRadius(11)
                            .padding(10)
                    })
                }
            }
            .navigationTitle("Booking Details")
            .navigationBarTitleDisplayMode(.inline)
        }
        .preferredColorScheme(.dark)
    }
}

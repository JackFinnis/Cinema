//
//  MyTicketsView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct MyTickets: View {
    @EnvironmentObject var modelData: ModelData
    
    @Binding var tickets: [Film]
    @Binding var tabSelection: Int
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText)
                
                List(tickets.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { ticket in
                    NavigationLink(destination: TicketDetail(tabSelection: $tabSelection, film: ticket), label: {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(ticket.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("qrcode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            .cornerRadius(11)
                            
                            Text(ticket.name)
                                .padding(.leading, 10)
                            Text(ticket.time + ", " + ticket.date)
                                .foregroundColor(.secondary)
                                .padding(.leading, 10)
                        }
                        .padding(10)
                    })
                    .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("My Tickets")
            .toolbar {
                Button(action: {
                    print("sort")
                }, label: {
                    Image(systemName: "arrow.up.arrow.down")
                })
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

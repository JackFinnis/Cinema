//
//  MyTicketsView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct MyTickets: View {
    @Binding var tickets: [Film]
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText)
                
                List(tickets.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { ticket in
                    Text(ticket.name)
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

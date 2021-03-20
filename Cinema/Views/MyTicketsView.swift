//
//  MyTicketsView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct MyTicketsView: View {
    var body: some View {
        NavigationView {
            Text("Next Booking: Cats")
                .navigationTitle("My Tickets")
                .toolbar {
                    Button(action: {
                        print("sort")
                    }, label: {
                        Image(systemName: "arrow.up.arrow.down")
                    })
                }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

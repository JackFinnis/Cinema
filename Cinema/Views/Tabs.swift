//
//  MyTabView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct Tabs: View {
    @EnvironmentObject var modelData: ModelData
    
    @State var tickets: [Film] = []
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            WhatsOn(tabSelection: $tabSelection, tickets: $tickets)
                .tabItem {
                    VStack {
                        if tabSelection == 0 {
                            Image(systemName: "film.fill")
                        } else {
                            Image(systemName: "film")
                        }
                        Text("What's On?")
                    }
                }
                .tag(0)
            
            MyTickets(tickets: $tickets, tabSelection: $tabSelection)
                .tabItem {
                    VStack {
                        if tabSelection == 1 {
                            Image(systemName: "ticket.fill")
                        } else {
                            Image(systemName: "ticket")
                        }
                        Text("My Tickets")
                    }
                }
                .tag(1)
        }
    }
}

//
//  WhatsOnView.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

struct WhatsOnView: View {
    var body: some View {
        NavigationView {
            Text("Avengers: Age of Ultron")
                .navigationTitle("What's On?")
                .toolbar {
                    Button(action: {
                        print("filter")
                    }, label: {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                    })
                }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


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
                .navigationBarTitle("What's On?")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("filter")
                        }, label: {
                            Image(systemName: "line.horizontal.3.decrease.circle")
                        })
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("sort")
                        }, label: {
                            Image(systemName: "arrow.up.arrow.down.circle")
                        })
                    }
                }
        }
    }
}


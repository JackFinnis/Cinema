//
//  CinemaApp.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import SwiftUI

@main
struct CinemaApp: App {
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            Tabs()
                .environmentObject(modelData)
                .preferredColorScheme(.dark)
        }
    }
}

//
//  ListItApp.swift
//  ListIt
//
//  Created by sara ayed albogami on 12/06/1444 AH.
//

import SwiftUI

@main
struct ListItApp: App {
//    @StateObject private var dataController = DataController()
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashView()
//               .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

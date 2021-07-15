//
//  FetchRewardsApp.swift
//  FetchRewards
//
//  Created by Jenny Morales on 7/14/21.
//

import SwiftUI

@main
struct FetchRewardsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

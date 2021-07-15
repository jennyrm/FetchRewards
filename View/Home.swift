//
//  Home.swift
//  FetchRewards
//
//  Created by Jenny Morales on 7/14/21.
//

import SwiftUI

struct Home: View {
    @StateObject var jsonModel = JSONViewModel()
    
    var body: some View {
        VStack {
            if jsonModel.events.isEmpty {
                ProgressView()
                    .onAppear {
                        jsonModel.fetchData()
                    }
            } else {
                List(jsonModel.object,id: \.self) { event in
                    //display fetched JSON data...
                    EventView(event: event)
                }
                .listStyle(InsetGroupedListStyle())
            }
        }
        .navigationTitle("Fetched JSON")
        .navigationBarTitleDisplayMode(.inline)
    }
}

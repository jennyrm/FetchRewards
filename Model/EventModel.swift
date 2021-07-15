//
//  EventModel.swift
//  FetchRewards
//
//  Created by Jenny Morales on 7/14/21.
//

import SwiftUI

struct EventModel: Codable, Hashable {
    var events: [Data]
}//End of struct

struct Data: Codable, Hashable {
    var type: String
}//End of struct

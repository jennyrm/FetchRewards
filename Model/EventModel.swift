//
//  EventModel.swift
//  FetchRewards
//
//  Created by Jenny Morales on 7/14/21.
//

import SwiftUI

struct EventModel: Codable {    
    var events: [Data]
}//End of struct

struct Data: Codable {
    var type: String
    var dateTime: String
    var venue: Venue
    var performers: [Performer]
    
    private enum CodingKeys: String, CodingKey {
        case type, dateTime = "datetime_utc", venue, performers
    }
}//End of struct

struct Venue: Codable {
    var name: String
    var displayLocation: String
    
    private enum CodingKeys: String, CodingKey {
        case name, displayLocation = "display_location"
    }
}//End of struct

struct Performer: Codable {
    var name: String
    var image: URL
}//End of struct

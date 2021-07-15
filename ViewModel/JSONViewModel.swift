//
//  JSONViewModel.swift
//  FetchRewards
//
//  Created by Jenny Morales on 7/14/21.
//
import SwiftUI

class JSONViewModel: ObservableObject {
    
    @Published var events: [EventModel] = []
    
    func fetchData() {
//        let baseURL = "https://api.seatgeek.com/2/events/"
//        let eventsEndPoint = "events"
//        let clientIDEndPoint = "MjI1MzA2MzF8MTYyNjI5MjUxOC44MTc3NjM4"
//        let clientSecretEndPoint = "d4382da967fbf7b12ff494d4ae1bdbea252407aebbbdecf0122dba44bf71363d"
//
        let finalURL = "https://api.seatgeek.com/2/events?client_id=MjI1MzA2MzF8MTYyNjI5MjUxOC44MTc3NjM4&client_secret=d4382da967fbf7b12ff494d4ae1bdbea252407aebbbdecf0122dba44bf71363d"

        let request = URLRequest(url: URL(string: finalURL)!)
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: request) { data, res, err in
            guard let jsonData = data else { return }
            //checking for any internal api error
            let response = res as! HTTPURLResponse
            //checking by status code...
            if response.statusCode == 404 {
                print("API Error")
            }
            //fetching JSON data
            do {
                let events = try JSONDecoder().decode(EventModel.self, from: jsonData)
                print(events)
            } catch {
                print("Error in \(#function)\(#line) : \(error.localizedDescription) \n---\n \(error)")
                return
            }
        }.resume()
    }
    
}//End of class


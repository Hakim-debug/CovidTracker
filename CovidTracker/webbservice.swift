//
//  webbservice.swift
//  CovidTracker
//
//  Created by Hakim Laoukili on 2020-12-16.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//

import Foundation

class webservice {
    //Call the Covid Tracker Api
    func getCovidTrackingResult(completion: @escaping ([Tracking]?) -> Void) {
        
        guard let url = URL(string: "https://api.covidtracking.com/v1/states/current.json") else {
            print("Api")
            fatalError("Invalid URL")
            
            
            }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            
            guard let data = data, error == nil else {
               
               return completion(nil)
            }
             
            let trackingList = try? JSONDecoder().decode([Tracking].self, from: data)
            return completion(trackingList)
        }.resume()
    }
    
    
}

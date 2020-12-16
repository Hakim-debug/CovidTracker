//
//  TrackingListViewModel.swift
//  CovidTracker
//
//  Created by Hakim Laoukili on 2020-12-16.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//

import Foundation
class TrackingListViewModel: ObservableObject {
    
    //This get Displayed in thed screen
    @Published var trackings = [TrackingViewModel]()
    
    
    func getTrackingData() {
        //on the
        webservice().getCovidTrackingResult{ trackingList in
            if let trackingList = trackingList {
                print("Hola\(trackingList)")
                
                DispatchQueue.main.async {
                    self.trackings = trackingList.map(TrackingViewModel.init)
                }
                
            }
            
        }
        
    }
    
}

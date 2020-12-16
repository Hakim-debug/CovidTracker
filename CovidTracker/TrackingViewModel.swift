//
//  TrackingViewModel.swift
//  CovidTracker
//
//  Created by Hakim Laoukili on 2020-12-16.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//
//Loook for later
import Foundation
// MVVM princebel easy to modify
class TrackingViewModel{
    
    var tracking: Tracking
    init(tracking: Tracking){
        self.tracking = tracking
    }
    
    let id: UUID = UUID()
    
    var state: String{
        return self.tracking.state
    }
    
    var total: Int{
        return self.tracking.total
    }
    var positiv: Int {
        return self.tracking.positiv
    }
    
    var death: Int {
        return self.tracking.death
    }
    
    var hospitalized: Int {
        return self.tracking.hospitalized ?? 0
    }
}

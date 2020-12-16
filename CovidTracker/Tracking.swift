//
//  Tracking.swift
//  CovidTracker
//
//  Created by Hakim Laoukili on 2020-12-16.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//
//My Model

import Foundation

struct Tracking: Decodable {
    //Propities AND cONSTUCTUR
    
    let state: String
    let total: Int
    let positiv: Int
    let death: Int
    // We dont know the valuie thas why itys optinal (?)
    let hospitalized: Int?
    
    

}

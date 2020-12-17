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
    let positive: Int
    let death: Int
    let date: Int?
    // We dont know the valuie thas why itys optinal (?)
    let hospitalized: Int?
    
    //Search in api
    struct Results : Decodable {
        var state: [Tracking]
    }
    
//    enum CodingKeys: String, CodingKey {
//        case deceased = "label"
//        case dateBuried = "buriedDate"
//        case dateOfBirth = "birthDate"
//        case dateOfDeath = "deathDate"
//        case cemetery
//        case graveType = "blockType"
//        case location = "coordinates"
//        case id
//
//        enum LocationKeys: String, CodingKey {
//            case latitude = "lat"
//            case longitude = "lon"
//        }
//    }

}

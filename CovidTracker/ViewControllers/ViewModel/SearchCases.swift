//
//  SearchCases.swift
//  CovidTracker
//
//  Created by Hakim Laoukili on 2020-12-17.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//

import Foundation

class SearchCases: ObservableObject {
    
    @Published var searchCase : [Tracking] = []
    
    // User query..
    @Published var query = ""
    
    //Current Result
    @Published var page = 1
    
    func find(){
        
    }
    
    
}

//
//  ContentView.swift
//  CovidTracker
//
//  Created by Hakim Laoukili on 2020-12-16.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var trackingListVM = TrackingListViewModel()
    
    init(){
        self.trackingListVM.getTrackingData()
    }
//    The display view7
    var body: some View {
        NavigationView {
            
            List(self.trackingListVM.trackings, id: \.id ){
                
                tracking in
                
                HStack {
                    Text(tracking.state)
                    .padding()
                        .foregroundColor(Color.white)
                        .background(Color.purple)
                }
                
            }
            
            .navigationBarTitle("Covid19 Tracker")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

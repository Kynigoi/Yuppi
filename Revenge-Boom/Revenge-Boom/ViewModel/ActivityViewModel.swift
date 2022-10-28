//
//  Activity_view_model.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import Foundation

class ActivityViewModel: ObservableObject{
    
    @Published var activityCards: [ActivityCard] =
    
    [
        activityCard1,
        activityCard2,
        activityCard3,
        activityCard4,
        activityCard5,
        activityCard6,
        activityCard7
    ]
    
    @Published var activityGroupCards : [ActivityCard] =
    [
        activityCardGroup1,
        activityCardGroup2,
        activityCardGroup3,
        activityCardGroup4,
        activityCardGroup5,
        activityCardGroup6,
        activityCardGroup7
    
    ]
    
}


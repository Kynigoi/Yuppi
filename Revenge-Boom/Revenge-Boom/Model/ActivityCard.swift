//
//  Activity_card_file.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import Foundation
import SwiftUI


struct ActivityCard: Identifiable, Hashable, Equatable{
    
    let id = UUID()
    var nameActivity: String
    var imageActivity: String
    var colorActivity : Color
}


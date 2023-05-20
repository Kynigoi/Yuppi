//
//  Activity_card_file.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import Foundation
import SwiftUI

enum location{
    case indoor
    case outdoor
}

struct ActivityCard: Identifiable, Hashable, Equatable{
    
    let id = UUID()
    let nameActivity: String
    let numberOfParticipants: Int
    let requiredObjects: String
    let locationActivity: String
    let description: String
    
    let imageActivity: String
    let colorActivity : Color
}


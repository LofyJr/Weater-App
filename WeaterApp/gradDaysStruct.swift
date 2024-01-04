//
//  gradDaysStruct.swift
//  WheaterApp
//
//  Created by Lofy on 31/12/23.
//

import Foundation
import SwiftUI

struct gradDays: Hashable, Identifiable {
    let id = UUID()
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}


struct gradDaysData {
    
    static let gradTempData = [
        gradDays(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 26),
    ]
    
}

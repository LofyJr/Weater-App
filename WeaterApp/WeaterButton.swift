//
//  WeatherButton.swift
//  WheaterApp
//
//  Created by Lofy on 30/12/23.
//

import Foundation
import SwiftUI

struct WeaterButton: View {
    
    var tituloBotao: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(tituloBotao)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

//
//  History.swift
//  BaronsConverter
//
//  Created by Paul Onawola on 01/01/2023.
//

import SwiftUI


struct History: Identifiable {
    let id:UUID = UUID()
    var conversion: Converter
    var date: Date = Date.now
}

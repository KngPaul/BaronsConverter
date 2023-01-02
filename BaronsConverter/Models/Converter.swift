//
//  Converter.swift
//  BaronsConverter
//
//  Created by Paul Onawola on 01/01/2023.
//

import SwiftUI


struct Converter: Identifiable {
    let id: UUID = UUID()
    var inputCurrency: Currency = .USD
    var outputCurrency: Currency = .USD
    var amount: Double = 0.00
    var outputAmount: Double {
        let value: Double = amount / inputCurrency.value
        return value * outputCurrency.value
    }
}

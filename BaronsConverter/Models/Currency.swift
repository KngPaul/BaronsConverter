//
//  Currency.swift
//  BaronsConverter
//
//  Created by Paul Onawola on 01/01/2023.
//

import SwiftUI


enum Currency: String, Identifiable, CaseIterable {
    case USD, GBP, EUR, NGN, CAD, KWD, CHF
    
    var name: String {
        rawValue.uppercased()
    }
    
    var value: Double {
        switch self {
        case .KWD:
            return 0.31
        case .GBP:
            return 0.83
        case .EUR:
            return 0.93
        case .CHF:
            return 0.93
        case .USD:
            return 1.00
        case .CAD:
            return 1.36
        case .NGN:
            return 448.08
        }
    }
    
    var realName: String {
        switch self {
        case .KWD:
            return "Kuwaiti Dinar"
        case .GBP:
            return "Pound sterling"
        case .EUR:
            return "Euro"
        case .CHF:
            return "Swiss Franc"
        case .USD:
            return "United States Dollar"
        case .CAD:
            return "Canadian Dollar"
        case .NGN:
            return "Nigerian Naira"
        }
    }
    
    var flag: String {
        switch self {
        case .KWD:
            return "🇰🇼"
        case .GBP:
            return "🇬🇧"
        case .EUR:
            return "🇪🇺"
        case .CHF:
            return "🇨🇭"
        case .USD:
            return "🇺🇸"
        case .CAD:
            return "🇨🇦"
        case .NGN:
            return "🇳🇬"
        }
    }
    
    var id: String {
        name
    }
}

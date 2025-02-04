//
//  Expenses.swift
//  Expenses App
//
//  Created by rose matheo on 28/01/2025.
//

import Foundation
import SwiftUI

struct Expenses: Identifiable {
    var id = UUID()
    var title: String
    var price: Double
    var type: Category
    
    static var testData = [
        Expenses(title: "Apple", price: 120, type: .perso),
        Expenses(title: "Airbnb", price: 1200, type: .perso),
        Expenses(title: "McDonald", price: 300, type: .vacation),
        Expenses(title: "Bakery", price: 10, type: .perso),
        Expenses(title: "Mechanic", price: 1000, type: .pro),
    ]
}

enum Category: String, CaseIterable{
    case All = "All"
    case perso = "Perso"
    case vacation = "Vacation"
    case pro = "High"
    
    var color:Color{
        switch self{
        case.perso:
            return Color.pink
        case.pro:
            return Color.green
        case.vacation:
            return Color.orange
        case.All:
            return Color.black
        }
    }
}
    

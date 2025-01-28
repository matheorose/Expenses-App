//
//  Expenses.swift
//  Expenses App
//
//  Created by rose matheo on 28/01/2025.
//

import Foundation

struct Expenses: Identifiable {
    var id = UUID()
    var title: String
    var price: Double
    var type: TypeDepense
    
    static var testData = [
        Expenses(title: "Apple", price: 120, type: .perso),
        Expenses(title: "Airbnb", price: 1200, type: .perso),
        Expenses(title: "McDonald", price: 300, type: .vacation),
        Expenses(title: "Bakery", price: 10, type: .perso),
        Expenses(title: "Mechanic", price: 1000, type: .pro),
    ]
}

enum TypeDepense{
    case perso
    case vacation
    case pro
}
    

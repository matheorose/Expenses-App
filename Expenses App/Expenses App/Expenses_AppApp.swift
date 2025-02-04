//
//  Expenses_AppApp.swift
//  Expenses App
//
//  Created by rose matheo on 28/01/2025.
//

import SwiftUI

@main
struct Expenses_AppApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(ExpensesViewModel())
        }
    }
}

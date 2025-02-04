//
//  ExpensesViewModel.swift
//  Expenses App
//
//  Created by rose matheo on 04/02/2025.
//

import Foundation

class ExpensesViewModel: ObservableObject{
    @Published var expenses: [Expenses] = []
    
    init() {
        getExpenses()
    }
    
    func getExpenses() {
        self.expenses.append(contentsOf: Expenses.testData)
    }
    
    func addExpense(expense: Expenses){
        self.expenses.append(expense)
    }
    
    func removeExpense(indexSet: IndexSet){
        self.expenses.remove(atOffsets: indexSet)
    }
    
    func moveExpense(from: IndexSet, to: Int){
        self.expenses.move(fromOffsets: from, toOffset: to)
    }
}

//
//  AddExpenseView.swift
//  Expenses App
//
//  Created by rose matheo on 04/02/2025.
//

import SwiftUI

struct AddExpenseView: View {
    
    @Environment(\.presentationMode) var presMode
    @EnvironmentObject var expenseVM: ExpensesViewModel
    
    @State private var expenseTitle: String = ""
    @State private var type: Category = .perso
    @State private var price: Double = 0
    
    var body: some View {
        
        VStack{
            TextField("Enter the destination expense", text: $expenseTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            TextField("Enter the expense", text: $price)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            Picker("Type", selection: $type){
                ForEach(Category.allCases, id: \.self){type in
                    Text(type.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button{
                self.expenseVM.addExpense(expense: Expenses(title: expenseTitle, price: price, type: type))
                self.presMode.wrappedValue.dismiss()
            }label:{
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            Spacer()
            
        }
        .padding(14)
        .navigationTitle("Add a Expense")
    }
}

#Preview {
    AddExpenseView()
}

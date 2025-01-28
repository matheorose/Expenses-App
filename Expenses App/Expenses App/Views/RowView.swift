//
//  RowView.swift
//  Expenses App
//
//  Created by rose matheo on 28/01/2025.
//

import SwiftUI

struct RowView: View {
    let expenses: Expenses
    
    var body: some View {
        HStack{
            Text(expenses.title)
            
            Spacer()
            
            Text(String(format: "%.2f  €", expenses.price))
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
}

#Preview {
    RowView(expenses: Expenses.testData[0])
}

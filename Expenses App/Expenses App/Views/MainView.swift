//
//  MainView.swift
//  Expenses App
//
//  Created by rose matheo on 04/02/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ListView()
                .tabItem {
                    Image(systemName: "dollarsign.square")
                    Text("Expenses")
                }
            
            AddExpenseView()
                .tabItem {
                    Image(systemName: "dollarsign.square")
                    Text("Expenses")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(ExpensesViewModel())
}

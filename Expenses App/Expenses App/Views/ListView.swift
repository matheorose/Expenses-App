//
//  ListView.swift
//  Expenses App
//
//  Created by rose matheo on 28/01/2025.
//

import SwiftUI

struct ListView: View {
    
    var data: [Expenses]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(data) { expenses in
                    RowView(expenses: expenses)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Expenses")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink("Add", destination: EmptyView())
                }
            }
        }
    }
}

#Preview {
    ListView(data: Expenses.testData)
}

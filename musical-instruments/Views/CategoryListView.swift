//
//  CategoryListView.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import SwiftUI

struct CategoryListView: View {
    
    @State private var categories: [Category] = []

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            
            ZStack {
                Color.brown.opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                VStack (spacing: 20) {
                    
                    Text("Instrument Categories")
                        .font(.system(.title, design: .rounded)).opacity(0.7)
                        .fontWeight(.medium)
                        .padding()
                    
                    ForEach(categories) { category in
                        NavigationLink(destination: InstrumentListView(category: category)) {
                            CategoryListRow(category: category)
                        }
                    }
                    
                    Spacer()
                }
                .padding(20)
                
            }
            //hide navigationtitle
            .navigationTitle("Categories")
            .navigationBarHidden(true)
            
        }
        .onAppear{
            loadCategories()
        }
    }

    private func loadCategories() {
        categories = DataService.loadData()
    }
}

#Preview {
    CategoryListView()
}

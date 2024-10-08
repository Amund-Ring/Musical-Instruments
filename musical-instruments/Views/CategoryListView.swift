//
//  CategoryListView.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import SwiftUI

struct CategoryListView: View {
    
    @State private var categories: [Category] = []
    let dataService = DataService();
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.brown.opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack (spacing: 20) {
                        Text("Instrument Categories")
                            .font(.system(size: 32, design: .rounded)).opacity(0.7)
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
            }
            .navigationTitle("Categories")
            .navigationBarHidden(true)
        }
        .onAppear{
            loadCategories()
        }
    }
    
    private func loadCategories() {
        categories = dataService.loadData()
    }
}

#Preview {
    CategoryListView()
}

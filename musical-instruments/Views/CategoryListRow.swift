//
//  CategoryListRow.swift
//  musical-instruments
//
//  Created by Amund Ring on 24/09/2024.
//

import SwiftUI

struct CategoryListRow: View {
    
    let category: Category
    
    var body: some View {
        HStack {
            Image(category.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .cornerRadius(15)
            
            Text(category.name)
                .font(.system(size: 30, weight: .medium, design: .rounded))
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .foregroundColor(.black.opacity(0.7))
                .tracking(3)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .frame(height: 80)
        .padding(.leading, 10)
        .padding(.vertical, 15)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.5), radius: 2, x: 1, y: 1)
        )
    }
}

#Preview {
    CategoryListRow(category: Category(name: "String Instruments", image: "string_instruments", instruments: []))
}

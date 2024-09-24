//
//  DetailView.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import SwiftUI

struct DetailView: View {
    
    var instrument: Instrument
    
    var body: some View {
        ZStack {
            Color.brown.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack() {
                    Text(instrument.name)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.medium)
                        .padding()
                    
                    Image(instrument.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 8)
                        )
                        .shadow(radius: 5)
                    
                    Text(instrument.description)
                        .font(.system(size: 18))
                        .frame(maxWidth: 280)
                        .padding()
                    
                    Spacer()
                    
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    DetailView(instrument: Instrument(name: "Guitar", image: "guitar", description: "A stringed musical instrument."))
}

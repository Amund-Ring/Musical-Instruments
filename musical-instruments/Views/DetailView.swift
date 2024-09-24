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
                        .font(.system(.title, design: .rounded)).opacity(0.7)
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
                .padding(.top, 20)
            }
            
        }
    }
}

#Preview {
    DetailView(instrument: Instrument(name: "Guitar", image: "guitar", description: "A stringed musical instrument.\n\nThe guitar is one of the most versatile instruments, used across many musical genres from classical to rock. With six strings, it produces a wide range of tones, offering musicians the ability to create both melodic and rhythmic parts."))
}

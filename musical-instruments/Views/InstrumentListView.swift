//
//  InstrumentListView.swift
//  musical-instruments
//
//  Created by Amund Ring on 23/09/2024.
//

import SwiftUI

struct InstrumentListView: View {
    var category: Category
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color.brown.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                VStack {
                    
                    Text(category.name)
                        .font(.system(.title, design: .rounded)).opacity(0.7)
                        .fontWeight(.medium)
                        .padding()
                    
                    LazyVGrid(columns: columns) {
                        ForEach(category.instruments) { instrument in
                            NavigationLink(destination: DetailView(instrument: instrument)) {
                                VStack {
                                    Image(instrument.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(8)
                                    Text(instrument.name)
                                        .font(.headline)
                                        .foregroundColor(.black.opacity(0.7))
                                }
                                .padding(6)
                                .padding(.bottom, 3)
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 5)
                            }
                            .padding(8)
                        }
                    }
                }
                .padding(.top, 20)
                .navigationTitle(category.name)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("")
                    }
                }
            }
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    InstrumentListView(category: .init(name: "String Instruments", image: "image_name", instruments: [
        Instrument(name: "Guitar",
                   image: "guitar",
                   description: "A stringed musical instrument."),
        
        Instrument(name: "Violin",
                   image: "violin",
                   description: "A wooden chordophone."),
        
        Instrument(name: "Cello",
                   image: "cello",
                   description: "A large string instrument with a deep sound."),
        
        Instrument(name: "Double Bass",
                   image: "double_bass",
                   description: "The largest string instrument in the orchestra."),
        
        Instrument(name: "Harp",
                   image: "harp",
                   description: "A multi-stringed instrument played by plucking."),
        
        Instrument(name: "Mandolin",
                   image: "mandolin",
                   description: "A stringed instrument with a teardrop shape."),
    ]))
}

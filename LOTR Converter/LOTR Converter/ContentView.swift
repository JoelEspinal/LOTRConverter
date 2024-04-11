//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Joel Espinal on 8/4/24.
//

import SwiftUI

struct ContentView: View {
    var showExchangeInfo = false
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                HStack {
                    VStack {
                        HStack {
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        // Textfield
                        Text("Textfield")
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    VStack {
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        Text("Textfield")
                    }
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

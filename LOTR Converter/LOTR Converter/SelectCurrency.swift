//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Joel Espinal (JoelEspinal) on 24/4/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var  dismiss
    var body: some View {
        ZStack {
            // Background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // Text
                Text("Select the currency you are staring with:")
                    .fontWeight(.bold)
                // currency icons
                IconGrid(currency: .silverPiece)
                // Done Button
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                // currency icons
                IconGrid(currency: .goldPiece)
                
                // Done Buttons
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}

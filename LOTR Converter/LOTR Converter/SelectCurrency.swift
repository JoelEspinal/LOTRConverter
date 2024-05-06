//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Joel Espinal (ClaroDom) on 24/4/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var  dismiss
    
    let icons = [ 
            CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny"),
            CurrencyIcon(currencyImage: .silverpenny, currencyName: "Silver Penny"),
            CurrencyIcon(currencyImage: .silverpiece, currencyName: "Silver Piece"),
            CurrencyIcon(currencyImage: .goldpenny, currencyName: "Gold Penny"),
            CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
                ]
    
    
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
                
                
                LazyVGrid(columns: [GridItem(), GridItem() ,GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                    }
                }
                
                // Done Button
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                // currency icons
                
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

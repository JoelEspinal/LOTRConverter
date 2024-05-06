//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Joel Espinal (JoelEspinal) on 24/4/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var  dismiss
    @State var selectedCurrency: Currency

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
                        if selectedCurrency == currency {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        } else {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .onTapGesture {
                                    selectedCurrency = currency
                                }
                        }
                        
                        
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
    SelectCurrency(selectedCurrency: .silverPiece)
}

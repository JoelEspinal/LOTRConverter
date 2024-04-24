//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Joel Espinal (ClaroDom) on 24/4/24.
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
                Text("Hello World")
                    .fontWeight(.bold)
                // currency icons
                ZStack(alignment: .bottom) {
                    Image(.copperpenny)
                        .resizable()
                        .scaledToFit()
                    Text("Copper Penny")
                        .padding(3)
                        .font(.caption)
                        .frame(maxWidth: .infinity)
                        .background(.brown)
                }
                .padding(3)
                .frame(width: 100, height: 100)
                .background(.brown)
                .clipShape(.rect(cornerRadius: 25.0))
                // Done Button
                // Text
                Text("Hello World")
                    .fontWeight(.bold)
                // currency icons
                
                // Done Button
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

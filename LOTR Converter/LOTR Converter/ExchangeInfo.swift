//
//  ExcangeInfo.swift
//  LOTR Converter
//
//  Created by Joel Espinal on 14/4/24.
//

import SwiftUI

struct ExcangeInfo: View {
    var body: some View {
        ZStack {
            // backround
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // title text
                Text("Exchange rates")
                    .font(.largeTitle)
                    .tracking(3)
                // description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                // exchange rates
//                ExtractedView()
                
                // done button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExcangeInfo()
}


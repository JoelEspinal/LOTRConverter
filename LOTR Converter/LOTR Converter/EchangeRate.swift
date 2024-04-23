//
//  EchangeRate.swift
//  LOTR Converter
//
//  Created by Joel Espinal on 20/4/24.
//

import SwiftUI

struct ExtractedView: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            // exchange rate text
            Text(text)
            // right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExtractedView(leftImage: .silverpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .silverpenny)
}


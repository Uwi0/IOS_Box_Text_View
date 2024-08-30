//
//  BoxTextView.swift
//  Box Text View
//
//  Created by dwi prasetyo on 30/08/24.
//

import SwiftUI

struct BoxTextView: View {
    
    let color: Color
    let value: Double
    let text: String
    let dim: CGFloat
    let valueFont: Font
    let textFont: Font
    
    var formatValue: String {
        let valueNew = String(format: "%.1f", value)
        return valueNew.hasSuffix(".0") ? String(valueNew.dropLast(2)) : valueNew
    }
    
    init(
        color: Color,
        value: Double,
        text: String,
        dim: CGFloat = .infinity,
        valueFont: Font = .headline,
        textFont: Font = .subheadline
    ) {
        self.color = color
        self.value = value
        self.text = text
        self.dim = dim
        self.valueFont = valueFont
        self.textFont = textFont
    }
    
    var body: some View {
        VStack {
            Text(formatValue)
                .font(valueFont)
                .bold()
            Text(text)
                .font(textFont)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: dim, maxHeight: dim)
        .minimumScaleFactor(0.1)
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).fill(color))
    }
}

#Preview {
    ZStack {
        LinearGradient(
            colors: [.white.opacity(0.6), .indigo, .gray],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
        
        HStack {
            BoxTextView(
                color: Color(red: 241/255, green: 249/255, blue: 247/255),
                value: 364,
                text: "average length",
                dim: 175
            )
            BoxTextView(
                color: Color(red: 241/255, green: 249/255, blue: 247/255),
                value: 13.2,
                text: "average days to finish",
                dim: 175
            )
        }.padding()
    }
}

//
//  ContentView.swift
//  Box Text View
//
//  Created by dwi prasetyo on 30/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
}

#Preview {
    ContentView()
}

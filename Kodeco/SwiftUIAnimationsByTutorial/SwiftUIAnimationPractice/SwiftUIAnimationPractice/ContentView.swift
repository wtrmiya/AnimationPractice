//
//  ContentView.swift
//  SwiftUIAnimationPractice
//
//  Created by Wataru Miyakoshi on 2024/06/29.
//

import SwiftUI

struct ContentView: View {
    @State private var xOffset: CGFloat = 0.0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .offset(x: xOffset)
            Text("Hello, world!")
            
            Button(action: {
                withAnimation(.linear(duration: 1.0)) {
                    xOffset = xOffset == 0.0 ? 100.0 : 0.0
                }
            }, label: {
                Text("Button")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

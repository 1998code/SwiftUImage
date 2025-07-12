//
//  ContentView.swift
//  SwiftUImage Demo
//
//  Created by Ming on 15/8/2022.
//

import SwiftUI
import SwiftUImage

struct ContentView: View {
    var body: some View {
        VStack {
            Text("System Symbols (SF)").bold()
            
            // Using native SwiftUI Image for system symbols
            Image(systemName: "globe")
                .foregroundColor(.accentColor)
                .font(.largeTitle)
                .padding(25)
            
            Divider().padding()
            
            Text("Remote Image - Basic").bold()
            
            // Basic Image(url:) - just like AsyncImage
            Image(url: "https://developer.apple.com/news/images/og/swiftui-og.png")
            
            Divider().padding()
            
            Text("Remote Image - Custom").bold()
            
            // Image(url:) with custom content and placeholder
            Image(url: "https://developer.apple.com/news/images/og/swiftui-og.png") { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            
            Divider().padding()
            
            Text("Local Image").bold()
            
            // Using native SwiftUI Image for local images
            Image("applelogo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

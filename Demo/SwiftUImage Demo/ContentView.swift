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
            
            SwiftUImage(name: .constant("sf.globe"))
                .foregroundColor(.accentColor)
                .frame(width: 100, height: 100)
            
            Divider().padding()
            
            Text("Remote Image").bold()
            
            SwiftUImage(name: .constant("https://developer.apple.com/news/images/og/swiftui-og.png"))
                .foregroundColor(.accentColor)
            
            Divider().padding()
            
            Text("Local Image").bold()
            
            SwiftUImage(name: .constant("applelogo"))
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

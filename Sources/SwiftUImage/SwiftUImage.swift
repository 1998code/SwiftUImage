//
//  Created by Ming on 11/6/2022.
//

import SwiftUI

public struct SwiftUImage: View {
    @Binding var name: String
    
    public init( name: Binding<String> ) {
        _name = name
    }
    
    // Convenience initializer for static string names
    public init(name: String) {
        _name = .constant(name)
    }
    
    // Convenience initializer for URLs
    public init(url: String) {
        _name = .constant(url)
    }
    
    public var body: some View {
        if name.contains("http") {
            AsyncImage(url: URL(string: name)) { image in
                image.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
        else if name.contains("sf") {
            Image(systemName: name.replacingOccurrences(of: "sf.", with: ""))
                .resizable()
                .scaledToFit()
        }
        else {
            Image(name)
                .resizable()
                .scaledToFit()
        }
    }
}

// Extension to SwiftUI Image to add URL support
public extension Image {
    // Static method for URL loading
    static func url(_ urlString: String) -> some View {
        AsyncImage(url: URL(string: urlString)) { image in
            image.resizable().scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
}

// Alternative approach: Create a namespace for enhanced Image functionality
public enum UImage {
    // For URLs
    public static func url(_ urlString: String) -> some View {
        AsyncImage(url: URL(string: urlString)) { image in
            image.resizable().scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
    
    // For system names
    public static func system(_ name: String) -> some View {
        SwiftUI.Image(systemName: name)
            .resizable()
            .scaledToFit()
    }
    
    // For local images
    public static func local(_ name: String) -> some View {
        SwiftUI.Image(name)
            .resizable()
            .scaledToFit()
    }
}

// Function to create Image with URL support that looks like an initializer
public func Image(url: String) -> some View {
    AsyncImage(url: URL(string: url)) { image in
        image
            .resizable()
            .scaledToFit()
    } placeholder: {
        ProgressView()
    }
}

// Function with custom content and placeholder (like AsyncImage)
public func Image<Content: View, Placeholder: View>(
    url: String,
    @ViewBuilder content: @escaping (SwiftUI.Image) -> Content,
    @ViewBuilder placeholder: @escaping () -> Placeholder
) -> some View {
    AsyncImage(url: URL(string: url), content: content, placeholder: placeholder)
}

// Function with just custom content
public func Image<Content: View>(
    url: String,
    @ViewBuilder content: @escaping (SwiftUI.Image) -> Content
) -> some View {
    AsyncImage(url: URL(string: url)) { phase in
        if let image = phase.image {
            content(image)
        } else {
            ProgressView()
        }
    }
}

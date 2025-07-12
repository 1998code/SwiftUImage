# SwiftUImage
Enhanced SwiftUI Image with URL loading support using familiar Image syntax.

<img width="2096" alt="CleanShot 2022-08-15 at 22 30 18@2x" src="https://user-images.githubusercontent.com/54872601/184654833-5a84173f-7ac7-4349-9e94-23cab12de9a2.png">

## Features
- 🌐 **URL Loading**: Load remote images with `Image(url: "...")`
- 🔄 **AsyncImage Integration**: Full AsyncImage functionality with familiar syntax
- 🎨 **Native Compatibility**: Works alongside standard SwiftUI Image
- 📱 **Auto-scaling**: Automatic resizable and scaledToFit for basic usage
- 🛠 **Customizable**: Support for custom content and placeholder views

## Environment
- Xcode 13 or above
- iOS 15 or above
- macOS 12 or above
- watchOS 8 or above

## Installation

### Swift Package Manager
```swift
dependencies: [
    .package(url: "https://github.com/1998code/SwiftUImage.git", from: "1.0.0")
]
```

## Usage

```swift
import SwiftUImage
```

### Remote Images - Basic Usage
The simplest way to load remote images with automatic scaling:

```swift
Image(url: "https://developer.apple.com/news/images/og/swiftui-og.png")
    .frame(width: 200, height: 100)
```

### Remote Images - Custom Content & Placeholder
Full control over image rendering and loading state:

```swift
Image(url: "https://example.com/icon.png") { image in
    image
        .resizable()
        .scaledToFit()
        .clipShape(Circle())
} placeholder: {
    ProgressView()
        .scaleEffect(0.5)
}
.frame(width: 50, height: 50)
```

### Remote Images - Custom Content Only
Customize the loaded image with automatic ProgressView placeholder:

```swift
Image(url: "https://example.com/image.png") { image in
    image
        .resizable()
        .scaledToFill()
}
.frame(width: 100, height: 100)
.clipped()
```

### System Symbols (Standard SwiftUI)
Use native SwiftUI syntax for system symbols:

```swift
Image(systemName: "globe")
    .foregroundColor(.blue)
    .font(.largeTitle)
```

### Local Images (Standard SwiftUI)
Use native SwiftUI syntax for local images:

```swift
Image("applelogo")
    .resizable()
    .scaledToFit()
    .frame(width: 100, height: 100)
```

## API Reference

### `Image(url: String)`
Basic URL loading with automatic resizable and scaledToFit behavior.

### `Image(url: String, content: @ViewBuilder (Image) -> Content)`
Load URL with custom image content transformation and automatic ProgressView placeholder.

### `Image(url: String, content: @ViewBuilder (Image) -> Content, placeholder: @ViewBuilder () -> Placeholder)`
Full control over both image content and loading placeholder.

## Legacy API

The original SwiftUImage API is still available for backward compatibility:

```swift
SwiftUImage(name: .constant("https://example.com/image.png"))
SwiftUImage(name: "https://example.com/image.png") // Static convenience
SwiftUImage(url: "https://example.com/image.png")  // URL convenience
```

## Migration Guide

### From v1.x to v2.x

**Old syntax:**
```swift
SwiftUImage(name: .constant("https://example.com/image.png"))
```

**New syntax:**
```swift
Image(url: "https://example.com/image.png")
```

**Benefits:**
- Cleaner, more familiar syntax
- Better integration with SwiftUI
- More flexible customization options
- Automatic sensible defaults

## Contribution
Please raise an issue / pull request.

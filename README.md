# SwiftUImage
An easy way to show Local, Remote and System images with SwiftUI.

<img width="1638" alt="CleanShot 2022-08-15 at 22 24 19@2x" src="https://user-images.githubusercontent.com/54872601/184653867-3672ce96-136a-4bda-ad4e-6ea16dd0bf71.png">

## Environment
- Xcode 13 or above
- iOS 15 or above
- macOS 12 or above
- watchOS 8 or above

## Usage

```swift
import SwiftUImage
```

### System Symbols (SF)
```swift
// SwiftUImage(name: .constant("sf.{STRING}"))
SwiftUImage(name: .constant("sf.globe"))
```

### Remote Image
```swift
// SwiftUImage(name: .constant("{URL_STRING}"))
SwiftUImage(name: .constant("https://developer.apple.com/news/images/og/swiftui-og.png"))
```

### Local Image
```swift
// SwiftUImage(name: .constant("{STRING}"))
SwiftUImage(name: .constant("applelogo"))
```

## Contribution
Please raise an issue / pull request.

# SwiftUImage
An easy way to show Local, Remote and System images with SwiftUI.

<img width="2096" alt="CleanShot 2022-08-15 at 22 30 18@2x" src="https://user-images.githubusercontent.com/54872601/184654833-5a84173f-7ac7-4349-9e94-23cab12de9a2.png">

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

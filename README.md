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
Expected Output:
<img width="115" alt="CleanShot 2022-08-15 at 22 31 43@2x" src="https://user-images.githubusercontent.com/54872601/184655085-c9e49480-85b5-454d-84a2-75a0daeac3cb.png">

### Remote Image
```swift
// SwiftUImage(name: .constant("{URL_STRING}"))
SwiftUImage(name: .constant("https://developer.apple.com/news/images/og/swiftui-og.png"))
```
<img width="142" alt="CleanShot 2022-08-15 at 22 31 58@2x" src="https://user-images.githubusercontent.com/54872601/184655132-b963279e-8f27-4fb9-9711-576f7fc1bdd7.png">

### Local Image (Inside Assets Folder)
```swift
// SwiftUImage(name: .constant("{STRING}"))
SwiftUImage(name: .constant("applelogo"))
```
<img width="97" alt="CleanShot 2022-08-15 at 22 32 12@2x" src="https://user-images.githubusercontent.com/54872601/184655182-e5d7b975-2d7d-4a2d-8df3-721fadc6a71b.png">

## Contribution
Please raise an issue / pull request.

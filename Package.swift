// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUImage",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "SwiftUImage",
            targets: ["SwiftUImage"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftUImage",
            dependencies: []),
//        .testTarget(
//            name: "SwiftUImageTests",
//            dependencies: ["SwiftUImage"]),
    ]
)
